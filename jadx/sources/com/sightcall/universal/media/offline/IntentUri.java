package com.sightcall.universal.media.offline;

import android.content.Intent;
import android.net.Uri;

/* JADX INFO: loaded from: classes3.dex */
public class IntentUri {
    public Uri imageUri;
    public Intent intent;
    public Uri videoUri;

    public IntentUri(Intent intent, Uri uri, Uri uri2) {
        this.intent = intent;
        this.imageUri = uri;
        this.videoUri = uri2;
    }
}
