package com.batch.android.l;

import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import com.batch.android.R;
import com.dynatrace.android.callback.Callback;
import com.linkplay.medialib.server.HttpServer;
import com.sensorsdata.analytics.android.autotrack.aop.FragmentTrackHelper;
import com.sensorsdata.analytics.android.autotrack.aop.SensorsDataAutoTrackHelper;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Iterator;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public class b extends Fragment implements View.OnClickListener {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final String f23617h = "campaign_token";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private TextView f23618a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private TextView f23619b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private TextView f23620c;
    private TextView d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private TextView f23621e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private TextView f23622f;
    private com.batch.android.s.a g;

    private void a(com.batch.android.t.b bVar) {
        String str = bVar.m;
        TextView textView = this.f23618a;
        if (str != null) {
            textView.setText(str);
        } else {
            textView.setText(R.string.com_batchsdk_debug_view_empty);
        }
        com.batch.android.i.a aVar = bVar.f24042e;
        TextView textView2 = this.f23619b;
        if (aVar != null) {
            textView2.setText(a(aVar));
        } else {
            textView2.setText(R.string.com_batchsdk_debug_view_empty);
        }
        com.batch.android.i.a aVar2 = bVar.f24043f;
        TextView textView3 = this.f23620c;
        if (aVar2 != null) {
            textView3.setText(a(aVar2));
        } else {
            textView3.setText(R.string.com_batchsdk_debug_view_empty);
        }
        Integer num = bVar.f24044h;
        TextView textView4 = this.d;
        if (num != null) {
            Locale locale = Locale.US;
            StringBuilder sb = new StringBuilder();
            sb.append(num);
            textView4.setText(sb.toString());
        } else {
            textView4.setText(R.string.com_batchsdk_debug_view_empty);
        }
        TextView textView5 = this.f23621e;
        Locale locale2 = Locale.US;
        int i2 = bVar.g;
        StringBuilder sb2 = new StringBuilder();
        sb2.append(i2);
        textView5.setText(sb2.toString());
        if (bVar.f24047k.isEmpty()) {
            this.f23622f.setText(R.string.com_batchsdk_debug_view_empty);
            return;
        }
        StringBuilder sb3 = new StringBuilder();
        Iterator<com.batch.android.t.b.c> it = bVar.f24047k.iterator();
        while (it.hasNext()) {
            sb3.append(it.next().getClass().getSimpleName());
        }
        this.f23622f.setText(sb3.toString());
    }

    private String b(com.batch.android.t.b bVar) {
        String strConcat;
        String strConcat2;
        String strConcat3;
        String strConcat4;
        if (bVar.m != null) {
            strConcat = "Batch SDK - In-App Campaign:\n".concat(getString(R.string.com_batchsdk_local_campaign_debug_fragment_token) + ": " + bVar.m + "\n");
        } else {
            strConcat = "Batch SDK - In-App Campaign:\n".concat(getString(R.string.com_batchsdk_local_campaign_debug_fragment_token) + ": " + getString(R.string.com_batchsdk_debug_view_empty) + "\n");
        }
        if (bVar.f24042e != null) {
            strConcat2 = strConcat.concat(getString(R.string.com_batchsdk_local_campaign_debug_fragment_start_date) + ": " + a(bVar.f24042e) + "\n");
        } else {
            strConcat2 = strConcat.concat(getString(R.string.com_batchsdk_local_campaign_debug_fragment_start_date) + ": " + getString(R.string.com_batchsdk_debug_view_empty) + "\n");
        }
        if (bVar.f24043f != null) {
            strConcat3 = strConcat2.concat(getString(R.string.com_batchsdk_local_campaign_debug_fragment_end_date) + ": " + a(bVar.f24043f) + "\n");
        } else {
            strConcat3 = strConcat2.concat(getString(R.string.com_batchsdk_local_campaign_debug_fragment_end_date) + ": " + getString(R.string.com_batchsdk_debug_view_empty) + "\n");
        }
        if (bVar.f24044h != null) {
            Locale locale = Locale.US;
            strConcat4 = strConcat3.concat(getString(R.string.com_batchsdk_local_campaign_debug_fragment_capping) + ": " + bVar.f24044h + "\n");
        } else {
            strConcat4 = strConcat3.concat(getString(R.string.com_batchsdk_local_campaign_debug_fragment_capping) + ": " + getString(R.string.com_batchsdk_debug_view_empty) + "\n");
        }
        Locale locale2 = Locale.US;
        String strConcat5 = strConcat4.concat(getString(R.string.com_batchsdk_local_campaign_debug_fragment_period) + ": " + bVar.g + "\n");
        if (bVar.f24047k.isEmpty()) {
            return strConcat5.concat(getString(R.string.com_batchsdk_local_campaign_debug_fragment_trigger) + ": " + getString(R.string.com_batchsdk_debug_view_empty) + "\n");
        }
        StringBuilder sb = new StringBuilder();
        Iterator<com.batch.android.t.b.c> it = bVar.f24047k.iterator();
        while (it.hasNext()) {
            sb.append(it.next().getClass().getSimpleName());
        }
        return strConcat5.concat(getString(R.string.com_batchsdk_local_campaign_debug_fragment_trigger) + ": " + sb.toString() + "\n");
    }

    @Override // androidx.fragment.app.Fragment
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        com.batch.android.t.b bVarA = a();
        if (bVarA != null) {
            a(bVarA);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        Callback.n(view);
        try {
            com.batch.android.t.b bVarA = a();
            if (bVarA != null) {
                String strB = b(bVarA);
                Intent intent = new Intent("android.intent.action.SEND");
                intent.setType(HttpServer.MIME_PLAINTEXT);
                intent.putExtra("android.intent.extra.SUBJECT", getString(R.string.com_batchsdk_debug_view_title));
                intent.putExtra("android.intent.extra.TEXT", strB);
                startActivity(Intent.createChooser(intent, getString(R.string.com_batchsdk_debug_view_share)));
            }
        } finally {
            Callback.o();
            SensorsDataAutoTrackHelper.trackViewOnClick(view);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(R.layout.com_batchsdk_local_campaign_debug_fragment, viewGroup, false);
        this.f23618a = (TextView) viewInflate.findViewById(R.id.com_batchsdk_local_campaign_debug_fragment_token);
        this.f23619b = (TextView) viewInflate.findViewById(R.id.com_batchsdk_local_campaign_debug_fragment_start_date);
        this.f23620c = (TextView) viewInflate.findViewById(R.id.com_batchsdk_local_campaign_debug_fragment_end_date);
        this.d = (TextView) viewInflate.findViewById(R.id.com_batchsdk_local_campaign_debug_fragment_capping);
        this.f23621e = (TextView) viewInflate.findViewById(R.id.com_batchsdk_local_campaign_debug_fragment_period);
        this.f23622f = (TextView) viewInflate.findViewById(R.id.com_batchsdk_local_campaign_debug_fragment_trigger);
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

    private void a(com.batch.android.s.a aVar) {
        this.g = aVar;
    }

    private com.batch.android.t.b a() {
        String string = getArguments().getString(f23617h);
        if (string == null) {
            return null;
        }
        for (com.batch.android.t.b bVar : this.g.d()) {
            String str = bVar.m;
            if (str != null && str.equals(string)) {
                return bVar;
            }
        }
        return null;
    }

    private String a(com.batch.android.i.a aVar) {
        return new SimpleDateFormat(getString(R.string.com_batchsdk_debug_date_format), Locale.US).format(new Date(aVar.a()));
    }

    public static b a(String str, com.batch.android.s.a aVar) {
        Bundle bundle = new Bundle();
        bundle.putString(f23617h, str);
        b bVar = new b();
        bVar.setArguments(bundle);
        bVar.a(aVar);
        return bVar;
    }
}
