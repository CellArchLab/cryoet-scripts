#!/scicore/projects/scicore-p-structsoft/ubuntu/software/Miniconda3/miniconda3_python3.12.1/envs/DeepDeWedge-ub/bin/python

import argparse
import pandas as pd
import matplotlib.pyplot as plt
import sys

def parse_args():

	parser = argparse.ArgumentParser(description="Process metrics CSV and generate a loss plot.")

	parser.add_argument("--incsv", type=str, help="Path to input CSV file (metrics data)")
	parser.add_argument("--outpng", type=str, help="Path to output PNG file for the plot")

	if len(sys.argv) == 1:
		parser.print_help(sys.stderr)
		sys.exit(1)

	return parser.parse_args()

def main():

	args = parse_args()

	incsv = args.incsv
	outpng = args.outpng

	metrics = pd.read_csv(incsv)

	plt.figure(figsize=(7,5))
	plt.plot(metrics[~metrics.fitting_loss.isna()].epoch, metrics.fitting_loss[~metrics.fitting_loss.isna()], label="fitting loss")
	plt.plot(metrics[~metrics.val_loss.isna()].epoch[1:], metrics.val_loss[~metrics.val_loss.isna()][1:], label="validation loss")

	plt.xlabel("epoch")
	plt.ylabel("loss")
	plt.legend(loc="best")

	plt.savefig(outpng)

if __name__ == "__main__":
	main()
