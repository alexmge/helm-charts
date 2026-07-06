# pyplanet-helm-chart

## Usage

Add the repository after publishing GitHub Pages for this repo:

```bash
helm repo add pyplanet https://alexmge.github.io/helm-charts
helm repo update
helm install pyplanet pyplanet/pyplanet
```

Charts belong under `charts/<chart-name>`. This repository currently contains the `pyplanet` chart at `charts/pyplanet`.

## Notes

This repository is set up for Helm chart release automation with GitHub Actions and chart-releaser.