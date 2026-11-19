package com.batch.android.l;

import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import com.batch.android.Batch;
import com.batch.android.BatchPushRegistration;
import com.batch.android.R;
import com.dynatrace.android.callback.Callback;
import com.linkplay.medialib.server.HttpServer;
import com.sensorsdata.analytics.android.autotrack.aop.FragmentTrackHelper;
import com.sensorsdata.analytics.android.autotrack.aop.SensorsDataAutoTrackHelper;

/* JADX INFO: loaded from: classes.dex */
public class a extends Fragment implements View.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private TextView f23614a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private TextView f23615b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private TextView f23616c;

    private String a() {
        String strConcat = "Batch SDK:\n".concat("Version: 3.1.1\n").concat(getString(R.string.com_batchsdk_identifier_debug_fragment_install_id) + ": " + Batch.User.getInstallationID() + "\n");
        BatchPushRegistration registration = Batch.Push.getRegistration();
        if (registration != null) {
            return strConcat.concat(getString(R.string.com_batchsdk_identifier_debug_fragment_push_token) + ": " + registration.getToken() + "\n");
        }
        return strConcat.concat(getString(R.string.com_batchsdk_identifier_debug_fragment_push_token) + ": " + getString(R.string.com_batchsdk_debug_view_empty) + "\n");
    }

    public static a b() {
        return new a();
    }

    @Override // androidx.fragment.app.Fragment
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        this.f23614a.setText("3.1.1");
        this.f23615b.setText(Batch.User.getInstallationID());
        BatchPushRegistration registration = Batch.Push.getRegistration();
        TextView textView = this.f23616c;
        if (registration != null) {
            textView.setText(registration.getToken());
        } else {
            textView.setText(R.string.com_batchsdk_debug_view_empty);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        Callback.n(view);
        try {
            String strA = a();
            Intent intent = new Intent("android.intent.action.SEND");
            intent.setType(HttpServer.MIME_PLAINTEXT);
            intent.putExtra("android.intent.extra.SUBJECT", getString(R.string.com_batchsdk_debug_view_share));
            intent.putExtra("android.intent.extra.TEXT", strA);
            startActivity(Intent.createChooser(intent, getString(R.string.com_batchsdk_debug_view_share)));
        } finally {
            Callback.o();
            SensorsDataAutoTrackHelper.trackViewOnClick(view);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(R.layout.com_batchsdk_identifier_debug_fragment, viewGroup, false);
        this.f23614a = (TextView) viewInflate.findViewById(R.id.com_batchsdk_identifier_debug_fragment_sdk_version);
        this.f23615b = (TextView) viewInflate.findViewById(R.id.com_batchsdk_identifier_debug_fragment_install_id);
        this.f23616c = (TextView) viewInflate.findViewById(R.id.com_batchsdk_identifier_debug_fragment_push_token);
        viewInflate.findViewById(R.id.com_batchsdk_identifier_debug_fragment_share_button).setOnClickListener(this);
        return viewInflate;
    }

    @Override // androidx.fragment.app.Fragment
    public void onHiddenChanged(boolean z) {
        super.onHiddenChanged(z);
        FragmentTrackHelper.trackOnHiddenChanged(this, z);
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        FragmentTrackHelper.trackFragmentPause(this);
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        FragmentTrackHelper.trackFragmentResume(this);
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        FragmentTrackHelper.onFragmentViewCreated(this, view, bundle);
    }

    @Override // androidx.fragment.app.Fragment
    public void setUserVisibleHint(boolean z) {
        super.setUserVisibleHint(z);
        FragmentTrackHelper.trackFragmentSetUserVisibleHint(this, z);
    }
}
