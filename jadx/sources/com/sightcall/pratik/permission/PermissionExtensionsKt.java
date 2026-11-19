package com.sightcall.pratik.permission;

import androidx.activity.result.ActivityResultLauncher;
import androidx.activity.result.contract.ActivityResultContracts$RequestMultiplePermissions;
import androidx.appcompat.app.AppCompatActivity;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.OnLifecycleEvent;
import com.sightcall.universal.permission.PermissionsActivity;
import defpackage.md;
import defpackage.p3;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000N\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0000\u001aL\u0010\u0007\u001a\u00020\b*\u00020\t2>\u0010\n\u001a:\u0012\u0019\u0012\u0017\u0012\u0004\u0012\u00020\r0\f¢\u0006\f\b\u000e\u0012\b\b\u000f\u0012\u0004\b\b(\u0010\u0012\u0015\u0012\u0013\u0018\u00010\u0005¢\u0006\f\b\u000e\u0012\b\b\u000f\u0012\u0004\b\b(\u0011\u0012\u0004\u0012\u00020\b0\u000bH\u0007\u001aL\u0010\u0007\u001a\u00020\b*\u00020\u00122>\u0010\n\u001a:\u0012\u0019\u0012\u0017\u0012\u0004\u0012\u00020\r0\f¢\u0006\f\b\u000e\u0012\b\b\u000f\u0012\u0004\b\b(\u0010\u0012\u0015\u0012\u0013\u0018\u00010\u0005¢\u0006\f\b\u000e\u0012\b\b\u000f\u0012\u0004\b\b(\u0011\u0012\u0004\u0012\u00020\b0\u000bH\u0007\u001a$\u0010\u0013\u001a\u00020\b*\u00020\u00122\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00150\f2\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0005\u001a$\u0010\u0013\u001a\u00020\b*\u00020\t2\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00150\f2\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0005\u001a,\u0010\u0016\u001a\u00020\b2\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00150\f2\u0014\u0010\u0017\u001a\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\u0004\u0018\u00010\u0003H\u0002\u001a\u0016\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00150\f*\b\u0012\u0004\u0012\u00020\r0\f\u001a\u0010\u0010\u0019\u001a\u00020\u001a*\b\u0012\u0004\u0012\u00020\r0\f\"&\u0010\u0000\u001a\u001a\u0012\u0004\u0012\u00020\u0002\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\u00040\u00030\u0001X\u0082\u0004¢\u0006\u0002\n\u0000\"\u001c\u0010\u0006\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0001X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001b"}, d2 = {"permissionsRequesters", "Ljava/util/WeakHashMap;", "", "Landroidx/activity/result/ActivityResultLauncher;", "", "", "permissionsTag", "registerForPermissions", "", "Landroidx/appcompat/app/AppCompatActivity;", "callback", "Lkotlin/Function2;", "", "Lcom/sightcall/pratik/permission/PermissionResult;", "Lkotlin/ParameterName;", "name", PermissionsActivity.EXTRA_RESULTS, "tag", "Landroidx/fragment/app/Fragment;", "requestPermissions", PermissionsActivity.EXTRA_PERMISSIONS, "Lcom/sightcall/pratik/permission/Permission;", "request", "permissionsRequester", "deniedPermissions", "areAllPermissionsGranted", "", "pratik_release"}, k = 2, mv = {2, 3, 0}, xi = 48)
public final class PermissionExtensionsKt {
    private static final WeakHashMap<Object, ActivityResultLauncher<String[]>> permissionsRequesters = new WeakHashMap<>();
    private static final WeakHashMap<Object, String> permissionsTag = new WeakHashMap<>();

    public static final boolean areAllPermissionsGranted(List<PermissionResult> list) {
        list.getClass();
        return deniedPermissions(list).isEmpty();
    }

    public static final List<Permission> deniedPermissions(List<PermissionResult> list) {
        list.getClass();
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (!((PermissionResult) obj).isGranted()) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList(CollectionsKt.t(arrayList, 10));
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            arrayList2.add(((PermissionResult) it.next()).getPermission());
        }
        return arrayList2;
    }

    @OnLifecycleEvent(Lifecycle.Event.ON_CREATE)
    public static final void registerForPermissions(AppCompatActivity appCompatActivity, Function2<? super List<PermissionResult>, ? super String, Unit> function2) {
        appCompatActivity.getClass();
        function2.getClass();
        permissionsRequesters.put(appCompatActivity, appCompatActivity.registerForActivityResult(new ActivityResultContracts$RequestMultiplePermissions(), new p3(function2, appCompatActivity, 20)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void registerForPermissions$lambda$0(Function2 function2, AppCompatActivity appCompatActivity, Map map) {
        map.getClass();
        function2.invoke(PermissionMappersKt.toPermissionResults(map), permissionsTag.get(appCompatActivity));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void registerForPermissions$lambda$1(Function2 function2, Fragment fragment, Map map) {
        map.getClass();
        function2.invoke(PermissionMappersKt.toPermissionResults(map), permissionsTag.get(fragment));
    }

    private static final void request(List<? extends Permission> list, ActivityResultLauncher<String[]> activityResultLauncher) {
        if (activityResultLauncher == null) {
            md.k("registerForPermissions must first be called, to be able to request permissions");
            return;
        }
        List<? extends Permission> list2 = list;
        ArrayList arrayList = new ArrayList(CollectionsKt.t(list2, 10));
        Iterator<T> it = list2.iterator();
        while (it.hasNext()) {
            arrayList.add(PermissionMappersKt.toManifestPermission((Permission) it.next()));
        }
        activityResultLauncher.a(arrayList.toArray(new String[0]));
    }

    public static final void requestPermissions(Fragment fragment, List<? extends Permission> list, String str) {
        fragment.getClass();
        list.getClass();
        permissionsTag.put(fragment, str);
        request(list, permissionsRequesters.get(fragment));
    }

    public static /* synthetic */ void requestPermissions$default(Fragment fragment, List list, String str, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            str = null;
        }
        requestPermissions(fragment, (List<? extends Permission>) list, str);
    }

    public static /* synthetic */ void requestPermissions$default(AppCompatActivity appCompatActivity, List list, String str, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            str = null;
        }
        requestPermissions(appCompatActivity, (List<? extends Permission>) list, str);
    }

    public static final void requestPermissions(AppCompatActivity appCompatActivity, List<? extends Permission> list, String str) {
        appCompatActivity.getClass();
        list.getClass();
        permissionsTag.put(appCompatActivity, str);
        request(list, permissionsRequesters.get(appCompatActivity));
    }

    @OnLifecycleEvent(Lifecycle.Event.ON_CREATE)
    public static final void registerForPermissions(Fragment fragment, Function2<? super List<PermissionResult>, ? super String, Unit> function2) {
        fragment.getClass();
        function2.getClass();
        permissionsRequesters.put(fragment, fragment.registerForActivityResult(new ActivityResultContracts$RequestMultiplePermissions(), new p3(function2, fragment, 21)));
    }
}
