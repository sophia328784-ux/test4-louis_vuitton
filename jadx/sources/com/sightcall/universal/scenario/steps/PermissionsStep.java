package com.sightcall.universal.scenario.steps;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.widget.Toast;
import com.sightcall.pratik.utils.SdkUtilsKt;
import com.sightcall.universal.R;
import com.sightcall.universal.Universal;
import com.sightcall.universal.model.Config;
import com.sightcall.universal.permission.Permissions;
import com.sightcall.universal.permission.PermissionsActivity;
import com.sightcall.universal.scenario.Scenario;
import com.sightcall.universal.scenario.Step;
import defpackage.bm;
import java.util.Arrays;
import net.rtccloud.sdk.Rtcc;

/* JADX INFO: loaded from: classes3.dex */
public class PermissionsStep extends Step {
    private final Config config;

    private PermissionsStep(Config config) {
        this.config = config;
    }

    public static Step nextStep(Config config) {
        if (Permissions.hasRequiredPermissions(Rtcc.instance().context())) {
            return new FetchReferenceStep(config);
        }
        if (SdkUtilsKt.isAtLeastSdk23()) {
            return new PermissionsStep(config);
        }
        bm.d(Arrays.toString(Permissions.REQUIRED_PERMISSIONS), "Permissions required to start Universal SDK: ");
        return null;
    }

    @Override // com.sightcall.universal.scenario.Step
    public void onBind(Scenario scenario) {
        Universal.register(this);
    }

    @Override // com.sightcall.universal.scenario.Step
    public void onUnbind() {
        Universal.unregister(this);
    }

    @Override // com.sightcall.universal.scenario.Step
    public void run() {
        PermissionsActivity.PermissionsResultReceiver permissionsResultReceiver = new PermissionsActivity.PermissionsResultReceiver() { // from class: com.sightcall.universal.scenario.steps.PermissionsStep.1
            @Override // com.sightcall.universal.permission.PermissionsActivity.PermissionsResultReceiver
            public void onPermissionsDenied(boolean z) {
                if (PermissionsStep.this.is(Step.State.ACTIVE)) {
                    Universal.logger().w("Required permissions denied!");
                    Context context = Universal.context();
                    CharSequence text = context.getText(R.string.universal_permissions_required_to_start);
                    Toast.makeText(context, text, 0).show();
                    if (z) {
                        Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
                        intent.addFlags(268435456);
                        intent.setData(Uri.fromParts("package", context.getPackageName(), null));
                        context.startActivity(intent);
                    }
                    PermissionsStep.this.unbindService();
                    PermissionsStep.this.failure(text.toString());
                }
            }

            @Override // com.sightcall.universal.permission.PermissionsActivity.PermissionsResultReceiver
            public void onPermissionsGranted() {
                if (PermissionsStep.this.is(Step.State.ACTIVE)) {
                    PermissionsStep.this.success(new FetchReferenceStep(PermissionsStep.this.config));
                    PermissionsStep.this.bindService();
                }
            }
        };
        Context context = Rtcc.instance().context();
        PermissionsActivity.start(context, permissionsResultReceiver, Permissions.getPermissionList(context));
    }
}
