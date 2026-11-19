package com.dynatrace.agent.userinteraction.model;

import defpackage.v40;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"com.dynatrace.agent_release"}, k = 2, mv = {2, 0, 0}, xi = 48)
public abstract class TouchUserInteractionKt {

    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f27187a;

        static {
            int[] iArr = new int[UiElement.Name.Origin.values().length];
            try {
                iArr[UiElement.Name.Origin.TEXT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[UiElement.Name.Origin.MASKED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[UiElement.Name.Origin.COMPONENT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f27187a = iArr;
        }
    }

    public static final String a(UiElement.Name.Origin origin) {
        origin.getClass();
        int i2 = WhenMappings.f27187a[origin.ordinal()];
        if (i2 == 1) {
            return "text";
        }
        if (i2 == 2) {
            return "masked";
        }
        if (i2 == 3) {
            return "component";
        }
        v40.g();
        return null;
    }
}
