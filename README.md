# KLC LLM Test

- Slurm for GPU node access
- Setting up Python environment
- Installing an LLM
- Running a test job


## Create a conda environment for GPU usage

```{bash}
micromamba create \
-p /kellogg/proj/wkt406/envs/gpu-env -c conda-forge \
-c nvidia python=3.12 pytorch::pytorch pytorch-cuda=12.4 seaborn pandas polars matplotlib ipykernel scikit-learn datasets transformers
```

```{bash}
python -m ipykernel install --user --name "gpu-env-kernel" --display-name "Python (gpu-env)"
```

