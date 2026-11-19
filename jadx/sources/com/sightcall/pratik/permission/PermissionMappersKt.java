package com.sightcall.pratik.permission;

import com.batch.android.e.x;
import com.sightcall.pratik.utils.SdkUtilsKt;
import defpackage.md;
import defpackage.v40;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000 \n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\u001e\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003H\u0000\u001a\f\u0010\u0006\u001a\u00020\u0007*\u00020\u0004H\u0000\u001a\n\u0010\b\u001a\u00020\u0004*\u00020\u0007¨\u0006\t"}, d2 = {"toPermissionResults", "", "Lcom/sightcall/pratik/permission/PermissionResult;", "", "", "", "toPermission", "Lcom/sightcall/pratik/permission/Permission;", "toManifestPermission", "pratik_release"}, k = 2, mv = {2, 3, 0}, xi = 48)
public final class PermissionMappersKt {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[Permission.values().length];
            try {
                iArr[Permission.Camera.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Permission.RecordAudio.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[Permission.AccessFineLocation.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[Permission.Notification.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public static final String toManifestPermission(Permission permission) {
        permission.getClass();
        int i2 = WhenMappings.$EnumSwitchMapping$0[permission.ordinal()];
        if (i2 == 1) {
            return "android.permission.CAMERA";
        }
        if (i2 == 2) {
            return "android.permission.RECORD_AUDIO";
        }
        if (i2 == 3) {
            return "android.permission.ACCESS_FINE_LOCATION";
        }
        if (i2 == 4) {
            return SdkUtilsKt.isAtLeastSdk33() ? x.d : "";
        }
        v40.g();
        return null;
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public static final Permission toPermission(String str) {
        str.getClass();
        switch (str.hashCode()) {
            case -1925850455:
                if (str.equals(x.d)) {
                    return Permission.Notification;
                }
                break;
            case -1888586689:
                if (str.equals("android.permission.ACCESS_FINE_LOCATION")) {
                    return Permission.AccessFineLocation;
                }
                break;
            case 463403621:
                if (str.equals("android.permission.CAMERA")) {
                    return Permission.Camera;
                }
                break;
            case 1831139720:
                if (str.equals("android.permission.RECORD_AUDIO")) {
                    return Permission.RecordAudio;
                }
                break;
        }
        md.n("Unknown permission");
        return null;
    }

    public static final List<PermissionResult> toPermissionResults(Map<String, Boolean> map) {
        map.getClass();
        ArrayList arrayList = new ArrayList(map.size());
        for (Map.Entry<String, Boolean> entry : map.entrySet()) {
            arrayList.add(new PermissionResult(toPermission(entry.getKey()), entry.getValue().booleanValue()));
        }
        return arrayList;
    }
}
