package com.sightcall.capabilities;

import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0014\n\u0002\u0010\u000b\n\u0000\bf\u0018\u00002\u00020\u0001J\u001c\u0010\u0002\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005H&J\b\u0010\u0007\u001a\u00020\u0003H&J\b\u0010\b\u001a\u00020\u0003H&J\b\u0010\t\u001a\u00020\u0003H&J\b\u0010\n\u001a\u00020\u0003H&J\b\u0010\u000b\u001a\u00020\u0003H&J\b\u0010\f\u001a\u00020\u0003H&J\b\u0010\r\u001a\u00020\u0003H&J\b\u0010\u000e\u001a\u00020\u0003H&J\b\u0010\u000f\u001a\u00020\u0003H&J\b\u0010\u0010\u001a\u00020\u0003H&J\b\u0010\u0011\u001a\u00020\u0003H&J\b\u0010\u0012\u001a\u00020\u0003H&J\b\u0010\u0013\u001a\u00020\u0003H&J\b\u0010\u0014\u001a\u00020\u0003H&J\b\u0010\u0015\u001a\u00020\u0003H&J\b\u0010\u0016\u001a\u00020\u0003H&J\b\u0010\u0017\u001a\u00020\u0003H&J\u0010\u0010\u0018\u001a\u00020\u00032\u0006\u0010\u0019\u001a\u00020\u001aH&¨\u0006\u001bÀ\u0006\u0003"}, d2 = {"Lcom/sightcall/capabilities/CapabilitiesRepository;", "", "register", "", "uidLocal", "", "request", "cancel", "activateScreenShare", "stopScreenShare", "activateVideo", "stopVideo", "pauseVideo", "resumeVideo", "activateAr", "stopAr", "activateScreencast", "stopScreencast", "activateCoBrowsing", "stopCoBrowsing", "activateCollimator", "stopCollimator", "frontCamera", "backCamera", "setAdvancedAnnotation", "enabled", "", "capabilities_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface CapabilitiesRepository {
    void activateAr();

    void activateCoBrowsing();

    void activateCollimator();

    void activateScreenShare();

    void activateScreencast();

    void activateVideo();

    void backCamera();

    void cancel();

    void frontCamera();

    void pauseVideo();

    void register(String uidLocal, String request);

    void resumeVideo();

    void setAdvancedAnnotation(boolean enabled);

    void stopAr();

    void stopCoBrowsing();

    void stopCollimator();

    void stopScreenShare();

    void stopScreencast();

    void stopVideo();
}
