package com.android.wiimu.config;

/* JADX INFO: loaded from: classes.dex */
public class LinkplayConfiguration {
    private boolean bUpnpService;

    public static class Builder {
        private boolean bUpnpService = true;

        public LinkplayConfiguration build() {
            return new LinkplayConfiguration(this.bUpnpService, 0);
        }

        public Builder setUpnpService(boolean z) {
            this.bUpnpService = z;
            return this;
        }
    }

    private LinkplayConfiguration(boolean z) {
        this.bUpnpService = z;
    }

    public boolean isUpnpService() {
        return this.bUpnpService;
    }

    public /* synthetic */ LinkplayConfiguration(boolean z, int i2) {
        this(z);
    }
}
