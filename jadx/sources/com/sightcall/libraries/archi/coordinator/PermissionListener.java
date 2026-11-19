package com.sightcall.libraries.archi.coordinator;

import com.batch.android.BatchPermissionActivity;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&¨\u0006\u0006À\u0006\u0003"}, d2 = {"Lcom/sightcall/libraries/archi/coordinator/PermissionListener;", "", "onRequestPermissionsResult", "", BatchPermissionActivity.EXTRA_PERMISSION, "Lcom/sightcall/libraries/archi/coordinator/Permission;", "archi_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface PermissionListener {
    boolean onRequestPermissionsResult(Permission permission);
}
