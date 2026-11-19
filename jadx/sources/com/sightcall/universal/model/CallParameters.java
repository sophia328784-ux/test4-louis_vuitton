package com.sightcall.universal.model;

import android.location.Location;
import android.net.Uri;
import com.sightcall.universal.ar.ArConfig;
import com.sightcall.universal.internal.proposition.Proposition;
import com.sightcall.universal.internal.ui.ScreenshareProducerMode;

/* JADX INFO: loaded from: classes3.dex */
public class CallParameters {
    public boolean allowUsbCamera = true;
    public ArConfig ar;
    public boolean hasRequestedHangup;
    public boolean isPendingLocationRequest;
    public boolean isPendingScreencastRequest;
    public boolean isSharePictureGalleryDisplayed;
    public boolean isSharePromptDisplayed;
    public boolean isShareVideoGalleryDisplayed;
    public boolean isShareViewFinderDisplayed;
    public Location lastLocation;
    public Proposition pendingProposition;
    public boolean restartVideoAfterPicture;
    public Uri screenshareContentUri;
    public ScreenshareProducerMode screenshareProducerMode;
    public String screenshareWebUrl;
    public boolean showCollimator;
    public boolean videoStopPending;
}
