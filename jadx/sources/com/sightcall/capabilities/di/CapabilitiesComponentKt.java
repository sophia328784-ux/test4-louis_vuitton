package com.sightcall.capabilities.di;

import com.sightcall.core.InitSightcallKt;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u0006\u0010\u0000\u001a\u00020\u0001¨\u0006\u0002"}, d2 = {"newCapabilitiesModuleComponent", "Lcom/sightcall/capabilities/di/CapabilitiesComponent;", "capabilities_release"}, k = 2, mv = {2, 3, 0}, xi = 48)
public final class CapabilitiesComponentKt {
    public static final CapabilitiesComponent newCapabilitiesModuleComponent() {
        CapabilitiesComponent capabilitiesComponentBuild = DaggerCapabilitiesComponent.builder().sightCallComponent(InitSightcallKt.getSightCallComponent()).build();
        capabilitiesComponentBuild.getClass();
        return capabilitiesComponentBuild;
    }
}
