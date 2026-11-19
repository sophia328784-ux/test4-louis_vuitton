package com.sightcall.universal.internal.view;

import com.sightcall.common.DataChannelAction;
import defpackage.a61;

/* JADX INFO: loaded from: classes3.dex */
public final class Flags {
    public static final int FLAG_DRAW = 1;
    public static final int FLAG_DROP = 2;
    public static final int FLAG_ERASE = 15;
    public static final int FLAG_MOVE = 14;
    public static final int FLAG_POINTER = 0;

    /* JADX INFO: renamed from: com.sightcall.universal.internal.view.Flags$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$sightcall$common$DataChannelAction;

        static {
            int[] iArr = new int[DataChannelAction.values().length];
            $SwitchMap$com$sightcall$common$DataChannelAction = iArr;
            try {
                iArr[DataChannelAction.DRAW.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$sightcall$common$DataChannelAction[DataChannelAction.DROP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$sightcall$common$DataChannelAction[DataChannelAction.POINTER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$sightcall$common$DataChannelAction[DataChannelAction.ERASE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public static int ofAction(DataChannelAction dataChannelAction) {
        int i2 = AnonymousClass1.$SwitchMap$com$sightcall$common$DataChannelAction[dataChannelAction.ordinal()];
        int i3 = 1;
        if (i2 != 1) {
            i3 = 2;
            if (i2 != 2) {
                if (i2 == 3) {
                    return 0;
                }
                if (i2 == 4) {
                    return 15;
                }
                a61.q(dataChannelAction, "Invalid action: ");
                return 0;
            }
        }
        return i3;
    }
}
