package com.sightcall.capabilities;

import com.sightcall.capabilities.datasource.rtcc.RtccCapability;
import defpackage.v40;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\f\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u0000¨\u0006\u0003"}, d2 = {"toRtccCapability", "Lcom/sightcall/capabilities/datasource/rtcc/RtccCapability;", "Lcom/sightcall/capabilities/Capability;", "capabilities_release"}, k = 2, mv = {2, 3, 0}, xi = 48)
public final class CapabilitiesMappersKt {
    public static final RtccCapability toRtccCapability(Capability capability) {
        capability.getClass();
        if (Intrinsics.c(capability, Capability.AdvancedAnnotations.INSTANCE)) {
            return RtccCapability.AdvancedAnnotations.INSTANCE;
        }
        if (Intrinsics.c(capability, Capability.CameraPause.INSTANCE)) {
            return RtccCapability.CameraPause.INSTANCE;
        }
        if (Intrinsics.c(capability, Capability.ChangeCamera.INSTANCE)) {
            return RtccCapability.ChangeCamera.INSTANCE;
        }
        if (Intrinsics.c(capability, Capability.CoBrowsing.INSTANCE)) {
            return RtccCapability.CoBrowsing.INSTANCE;
        }
        if (Intrinsics.c(capability, Capability.Flashlight.INSTANCE)) {
            return RtccCapability.Flashlight.INSTANCE;
        }
        if (Intrinsics.c(capability, Capability.GuestSwitch.INSTANCE)) {
            return RtccCapability.GuestSwitch.INSTANCE;
        }
        if (Intrinsics.c(capability, Capability.Note.INSTANCE)) {
            return RtccCapability.Note.INSTANCE;
        }
        if (Intrinsics.c(capability, Capability.Ocr.INSTANCE)) {
            return RtccCapability.Ocr.INSTANCE;
        }
        if (Intrinsics.c(capability, Capability.PictureEdition.INSTANCE)) {
            return RtccCapability.PictureEdition.INSTANCE;
        }
        if (Intrinsics.c(capability, Capability.ScreenCast.INSTANCE)) {
            return RtccCapability.ScreenCast.INSTANCE;
        }
        if (Intrinsics.c(capability, Capability.ShareFromGallery.INSTANCE)) {
            return RtccCapability.ShareFromGallery.INSTANCE;
        }
        if (Intrinsics.c(capability, Capability.Snapshot.INSTANCE)) {
            return RtccCapability.Snapshot.INSTANCE;
        }
        if (Intrinsics.c(capability, Capability.TouchScreen.INSTANCE)) {
            return RtccCapability.TouchScreen.INSTANCE;
        }
        if (Intrinsics.c(capability, Capability.Zoom.INSTANCE)) {
            return RtccCapability.Zoom.INSTANCE;
        }
        if (Intrinsics.c(capability, Capability.TranslationRemote.INSTANCE)) {
            return RtccCapability.TranslationRemote.INSTANCE;
        }
        if (Intrinsics.c(capability, Capability.CaseReportV3.INSTANCE)) {
            return RtccCapability.CaseReportV3.INSTANCE;
        }
        v40.g();
        return null;
    }
}
