package androidx.work.impl.utils;

import androidx.work.NetworkType;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
public abstract /* synthetic */ class NetworkTypeCompatKt$WhenMappings {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int[] f20550a;

    static {
        int[] iArr = new int[NetworkType.values().length];
        try {
            iArr[NetworkType.METERED.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            iArr[NetworkType.UNMETERED.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            iArr[NetworkType.NOT_ROAMING.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        f20550a = iArr;
    }
}
