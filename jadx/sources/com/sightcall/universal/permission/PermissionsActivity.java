package com.sightcall.universal.permission;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Parcel;
import android.os.ResultReceiver;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.app.ActivityCompat;
import androidx.core.content.ContextCompat;
import com.sightcall.universal.Universal;
import com.sightcall.universal.scenario.Scenario;
import java.util.Arrays;
import java.util.List;
import net.rtccloud.sdk.Rtcc;
import net.rtccloud.sdk.event.Event;

/* JADX INFO: loaded from: classes3.dex */
public class PermissionsActivity extends AppCompatActivity {
    public static final String EXTRA_NEVER_ASK_AGAIN = "never_ask_again";
    public static final String EXTRA_PERMISSIONS = "permissions";
    public static final String EXTRA_RESULTS = "results";
    private static final String EXTRA_RESULT_RECEIVER = "result_receiver";
    public static final String EXTRA_SHOULD_SHOW_RATIONALES = "results_should_show_rationale";
    public static final String FROM = "from";
    public static final int REQUEST_CODE = 1;
    private String[] permissions;
    private ResultReceiver resultReceiver;

    /* JADX INFO: renamed from: com.sightcall.universal.permission.PermissionsActivity$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$sightcall$universal$scenario$Scenario$Status;

        static {
            int[] iArr = new int[Scenario.Status.values().length];
            $SwitchMap$com$sightcall$universal$scenario$Scenario$Status = iArr;
            try {
                iArr[Scenario.Status.IDLE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$sightcall$universal$scenario$Scenario$Status[Scenario.Status.ACTIVE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$sightcall$universal$scenario$Scenario$Status[Scenario.Status.ENDED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    private static boolean requestCorrespondsToResult(String[] strArr, String[] strArr2) {
        List listAsList = Arrays.asList(strArr);
        List listAsList2 = Arrays.asList(strArr2);
        return listAsList.containsAll(listAsList2) && listAsList2.containsAll(listAsList);
    }

    public static void start(Context context, PermissionsResultReceiver permissionsResultReceiver, String... strArr) {
        Intent intent = new Intent(context, (Class<?>) PermissionsActivity.class);
        intent.addFlags(268435456);
        intent.putExtra(EXTRA_PERMISSIONS, strArr);
        intent.putExtra(EXTRA_RESULT_RECEIVER, wrapResultReceiver(permissionsResultReceiver));
        context.startActivity(intent);
    }

    public static void startFromOffline(Context context, PermissionsResultReceiver permissionsResultReceiver, String... strArr) {
        Intent intent = new Intent(context, (Class<?>) PermissionsActivity.class);
        intent.addFlags(268435456);
        intent.putExtra("from", "from");
        intent.putExtra(EXTRA_PERMISSIONS, strArr);
        intent.putExtra(EXTRA_RESULT_RECEIVER, wrapResultReceiver(permissionsResultReceiver));
        context.startActivity(intent);
    }

    private static ResultReceiver wrapResultReceiver(PermissionsResultReceiver permissionsResultReceiver) {
        Parcel parcelObtain = Parcel.obtain();
        permissionsResultReceiver.writeToParcel(parcelObtain, 0);
        parcelObtain.setDataPosition(0);
        ResultReceiver resultReceiver = (ResultReceiver) ResultReceiver.CREATOR.createFromParcel(parcelObtain);
        parcelObtain.recycle();
        return resultReceiver;
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Intent intent = getIntent();
        if (intent == null || (intent.getFlags() & 1048576) != 0) {
            finish();
            return;
        }
        Bundle extras = intent.getExtras();
        if (extras == null) {
            finish();
            return;
        }
        String[] stringArray = extras.getStringArray(EXTRA_PERMISSIONS);
        this.permissions = stringArray;
        if (stringArray == null || stringArray.length == 0) {
            finish();
            return;
        }
        this.resultReceiver = (ResultReceiver) extras.getParcelable(EXTRA_RESULT_RECEIVER);
        if (bundle == null) {
            ActivityCompat.requestPermissions(this, extras.getString("from") == null ? Permissions.getPermissionList(getApplicationContext()) : this.permissions, 1);
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onRequestPermissionsResult(int i2, String[] strArr, int[] iArr) {
        super.onRequestPermissionsResult(i2, strArr, iArr);
        if (requestCorrespondsToResult(this.permissions, strArr)) {
            int length = strArr.length;
            boolean[] zArr = new boolean[length];
            for (int i3 = 0; i3 < length; i3++) {
                zArr[i3] = ActivityCompat.shouldShowRequestPermissionRationale(this, strArr[i3]);
            }
            boolean zHasGrantedPermissions = Permissions.hasGrantedPermissions(iArr);
            boolean z = !zHasGrantedPermissions;
            if (!zHasGrantedPermissions) {
                for (String str : strArr) {
                    boolean z2 = ContextCompat.checkSelfPermission(this, str) == 0;
                    boolean zShouldShowRequestPermissionRationale = ActivityCompat.shouldShowRequestPermissionRationale(this, str);
                    if (!z2 && zShouldShowRequestPermissionRationale) {
                        z = false;
                        break;
                    }
                }
            }
            if (this.resultReceiver != null) {
                Bundle bundle = new Bundle(4);
                bundle.putStringArray(EXTRA_PERMISSIONS, strArr);
                bundle.putIntArray(EXTRA_RESULTS, iArr);
                bundle.putBooleanArray(EXTRA_SHOULD_SHOW_RATIONALES, zArr);
                bundle.putBoolean(EXTRA_NEVER_ASK_AGAIN, z);
                this.resultReceiver.send(zHasGrantedPermissions ? 0 : -1, bundle);
            }
            Rtcc.instance().bus().post(new PermissionsEvent(strArr, iArr, zArr, z));
            finish();
        }
    }

    @Event
    public void onScenarioStatusEvent(Scenario.StatusEvent statusEvent) {
        if (AnonymousClass1.$SwitchMap$com$sightcall$universal$scenario$Scenario$Status[statusEvent.status().ordinal()] != 3) {
            return;
        }
        finish();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStart() {
        super.onStart();
        Universal.register(this);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStop() {
        Universal.unregister(this);
        super.onStop();
    }

    public static abstract class PermissionsResultReceiver extends ResultReceiver {
        private int[] grantResults;
        private boolean neverAskAgain;
        private String[] permissions;
        private boolean[] shouldShowRationales;

        public PermissionsResultReceiver() {
            super(Universal.uiHandler());
        }

        public final int[] getGrantResults() {
            return this.grantResults;
        }

        public final String[] getPermissions() {
            return this.permissions;
        }

        public final boolean[] getShouldShowRationales() {
            return this.shouldShowRationales;
        }

        public final boolean isNeverAskAgain() {
            return this.neverAskAgain;
        }

        public abstract void onPermissionsDenied(boolean z);

        public abstract void onPermissionsGranted();

        @Override // android.os.ResultReceiver
        public void onReceiveResult(int i2, Bundle bundle) {
            this.permissions = bundle.getStringArray(PermissionsActivity.EXTRA_PERMISSIONS);
            this.grantResults = bundle.getIntArray(PermissionsActivity.EXTRA_RESULTS);
            this.shouldShowRationales = bundle.getBooleanArray(PermissionsActivity.EXTRA_SHOULD_SHOW_RATIONALES);
            boolean z = bundle.getBoolean(PermissionsActivity.EXTRA_NEVER_ASK_AGAIN);
            this.neverAskAgain = z;
            if (i2 == -1) {
                onPermissionsDenied(z);
            } else {
                if (i2 != 0) {
                    return;
                }
                onPermissionsGranted();
            }
        }

        public PermissionsResultReceiver(Handler handler) {
            super(handler);
        }
    }
}
