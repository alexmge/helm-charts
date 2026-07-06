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

The `pyplanet` chart defaults to a writable `/app/server` PVC, a separate read-only config secret, and service-oriented defaults for the dedicated server and database endpoints.

If you also need to share map files with a dedicated server, enable `sharedMaps` to create a second PVC mounted at `/server/UserData/Maps`.