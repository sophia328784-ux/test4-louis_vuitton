package com.vuitton.android.presentation.screen.permissions.models;

import com.vuitton.android.presentation.screen.permissions.PermissionContext;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
public abstract /* synthetic */ class PermissionsTrackingUIModelKt$WhenMappings {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int[] f62371a;

    static {
        int[] iArr = new int[PermissionContext.values().length];
        try {
            iArr[PermissionContext.FEED.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            iArr[PermissionContext.IMMERSIVE.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            iArr[PermissionContext.BACK_IN_STOCK.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        try {
            iArr[PermissionContext.INBOX.ordinal()] = 4;
        } catch (NoSuchFieldError unused4) {
        }
        try {
            iArr[PermissionContext.PORTAL.ordinal()] = 5;
        } catch (NoSuchFieldError unused5) {
        }
        try {
            iArr[PermissionContext.CONTACTABILITY.ordinal()] = 6;
        } catch (NoSuchFieldError unused6) {
        }
        f62371a = iArr;
    }
}
