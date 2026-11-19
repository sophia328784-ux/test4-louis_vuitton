package com.networkbench.agent.impl.floatbtnmanager;

import android.app.Fragment;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.text.Html;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import android.widget.Toast;
import com.dynatrace.android.callback.Callback;
import com.networkbench.R;
import com.networkbench.agent.impl.harvest.Harvest;
import com.networkbench.agent.impl.harvest.ScreenNameManager;
import com.networkbench.agent.impl.util.ab;
import com.networkbench.agent.impl.util.r;
import com.sensorsdata.analytics.android.autotrack.aop.FragmentTrackHelper;
import com.sensorsdata.analytics.android.autotrack.aop.SensorsDataAutoTrackHelper;
import defpackage.n00;
import defpackage.z81;
import java.io.File;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class SubmitFragment extends Fragment implements View.OnClickListener {
    private static Bitmap d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final String f37037e = "select.png";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final com.networkbench.agent.impl.c.e f37038f = com.networkbench.agent.impl.c.f.a();
    private static p g = new p();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f37039a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private EditText f37040b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private l f37041c;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private CheckBox f37042h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private CheckBox f37043i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private TextView f37044j;

    public class a implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private String f37051b;

        public a(String str) {
            this.f37051b = str == null ? "" : str;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                Harvest.getInstance().getHarvestConnection().sendActionDefinerData(SubmitFragment.this.f37041c, SubmitFragment.g, this.f37051b);
            } catch (Throwable th) {
                z81.k(new StringBuilder(" SendInfoRunnable run  has an error : "), th);
            }
        }
    }

    static {
        com.networkbench.agent.impl.util.c.c.a().a(new Runnable() { // from class: com.networkbench.agent.impl.floatbtnmanager.SubmitFragment.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    Harvest.getInstance().getHarvestConnection().getActionDefinerHost();
                } catch (Throwable th) {
                    z81.k(new StringBuilder(" SubmitFragment run  has an error : "), th);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i2) {
        if (g.f37130a != null) {
            this.f37044j.setText(Html.fromHtml(String.format(getString(i2).replace("\n", "<br>"), g.f37130a.i(), g.f37130a.j())));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(final String str) {
        if (c.a().f() == null || c.a().f().get() == null) {
            return;
        }
        c.a().f().get().runOnUiThread(new Runnable() { // from class: com.networkbench.agent.impl.floatbtnmanager.SubmitFragment.3
            @Override // java.lang.Runnable
            public void run() {
                Toast.makeText(c.a().f().get(), str, 1).show();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int c() {
        boolean zIsChecked = this.f37042h.isChecked();
        boolean zIsChecked2 = this.f37043i.isChecked();
        if (zIsChecked && zIsChecked2) {
            return R.string.action_tip_show_select_total;
        }
        if (zIsChecked) {
            return R.string.action_tip_show_select_content;
        }
        return zIsChecked2 ? R.string.action_tip_show_select_position : R.string.action_tip_show_default;
    }

    private void d() throws Throwable {
        String strA = com.networkbench.agent.impl.data.a.b.f36766a.a(ScreenNameManager.getCurrentScreenName());
        String string = this.f37040b.getText().toString();
        StringBuilder sb = new StringBuilder();
        sb.append(e.a(getActivity()));
        String strR = n00.r(File.separator, f37037e, sb);
        e.a(strR, d);
        p pVar = g;
        if (strA == null) {
            strA = "";
        }
        pVar.h(strA);
        p pVar2 = g;
        if (string == null) {
            string = "";
        }
        pVar2.g(string);
        g.i(strR);
    }

    @Override // android.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        try {
            d = ActionFloatingViewItem.f37020c;
            g.a(c.f37079b);
            g.b(c.f37080c);
            g.e(getArguments().getString(ActionFloatingViewItem.d));
            g.d(b());
            f37038f.a("selectInfo appId:selectInfo.actionFeatures invoke");
            g.f37130a = (com.networkbench.agent.impl.data.a.a) getArguments().getSerializable(ActionFloatingViewItem.f37019b);
            this.f37041c = new l() { // from class: com.networkbench.agent.impl.floatbtnmanager.SubmitFragment.2
                @Override // com.networkbench.agent.impl.floatbtnmanager.l
                public void a(int i2) {
                    String str;
                    if (i2 == 200) {
                        str = "上传成功";
                    } else if (i2 != 8888) {
                        switch (i2) {
                            case 500:
                                str = "上传失败-后台逻辑异常";
                                break;
                            case 501:
                                str = "上传失败-Token失效，请刷新页面重新扫描二维码";
                                break;
                            case 502:
                                str = "上传失败-请检查AppID";
                                break;
                            case 503:
                                str = "上传失败-上传图片错误";
                                break;
                            default:
                                str = "上传失败-未知错误";
                                break;
                        }
                    } else {
                        str = "获取上传的URL错误";
                    }
                    SubmitFragment.b(str);
                }
            };
        } catch (Throwable th) {
            f37038f.a("error onAttach", th);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        Callback.n(view);
        try {
            try {
                int id = view.getId();
                if (id == R.id.btn_upload) {
                    if (TextUtils.isEmpty(g.d())) {
                        Toast.makeText(r.u().J(), "ID为空， 请设置相应控件ID", 1).show();
                        return;
                    }
                    d();
                    com.networkbench.agent.impl.util.c.c cVarA = com.networkbench.agent.impl.util.c.c.a();
                    com.networkbench.agent.impl.data.a.a aVar = g.f37130a;
                    cVarA.a(new a(aVar == null ? "" : aVar.a(this.f37042h.isChecked(), this.f37043i.isChecked())));
                    getActivity().getFragmentManager().popBackStack();
                } else if (id == R.id.tv_cancle) {
                    getActivity().getFragmentManager().popBackStack();
                }
            } catch (Throwable th) {
                f37038f.a("error onClick", th);
            }
        } finally {
            Callback.o();
            SensorsDataAutoTrackHelper.trackViewOnClick(view);
        }
    }

    @Override // android.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.f37039a = layoutInflater.getContext();
        View viewInflate = layoutInflater.inflate(R.layout.operation_screen, viewGroup, false);
        try {
            ((TextView) viewInflate.findViewById(R.id.tv_page_name)).setText(getString(R.string.current_page_tag) + ScreenNameManager.getCurrentScreenName());
            ((ImageView) viewInflate.findViewById(R.id.iv_action_img)).setImageBitmap(d);
            this.f37040b = (EditText) viewInflate.findViewById(R.id.et_action_name);
            ((Button) viewInflate.findViewById(R.id.btn_upload)).setOnClickListener(this);
            ((TextView) viewInflate.findViewById(R.id.tv_cancle)).setOnClickListener(this);
            ArrayList arrayList = new ArrayList();
            arrayList.add("点击");
            ArrayAdapter arrayAdapter = new ArrayAdapter(this.f37039a, android.R.layout.simple_spinner_item, arrayList);
            arrayAdapter.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);
            ((Spinner) viewInflate.findViewById(R.id.spinner_info)).setAdapter((SpinnerAdapter) arrayAdapter);
            TextView textView = (TextView) viewInflate.findViewById(R.id.tv_action_show);
            if (g != null) {
                textView.setText(g.c() + "&" + g.d());
            }
            viewInflate.setOnTouchListener(new View.OnTouchListener() { // from class: com.networkbench.agent.impl.floatbtnmanager.SubmitFragment.4
                @Override // android.view.View.OnTouchListener
                public boolean onTouch(View view, MotionEvent motionEvent) {
                    return true;
                }
            });
            this.f37044j = (TextView) viewInflate.findViewById(R.id.tv_tip_show);
            a(R.string.action_tip_show_default);
            this.f37042h = (CheckBox) viewInflate.findViewById(R.id.cb_content);
            com.networkbench.agent.impl.data.a.a aVar = g.f37130a;
            if (aVar == null || ab.c(aVar.i())) {
                this.f37042h.setVisibility(4);
            }
            this.f37042h.setOnClickListener(new View.OnClickListener() { // from class: com.networkbench.agent.impl.floatbtnmanager.SubmitFragment.5
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    Callback.n(view);
                    try {
                        SubmitFragment submitFragment = SubmitFragment.this;
                        submitFragment.a(submitFragment.c());
                    } finally {
                        Callback.o();
                        SensorsDataAutoTrackHelper.trackViewOnClick(view);
                    }
                }
            });
            CheckBox checkBox = (CheckBox) viewInflate.findViewById(R.id.cb_position);
            this.f37043i = checkBox;
            if (g.f37130a != null) {
                checkBox.setText(getString(R.string.position_pref) + g.f37130a.j() + getString(R.string.position_suff));
            }
            com.networkbench.agent.impl.data.a.a aVar2 = g.f37130a;
            if (aVar2 == null || !aVar2.k()) {
                this.f37043i.setVisibility(4);
            }
            this.f37043i.setOnClickListener(new View.OnClickListener() { // from class: com.networkbench.agent.impl.floatbtnmanager.SubmitFragment.6
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    Callback.n(view);
                    try {
                        SubmitFragment submitFragment = SubmitFragment.this;
                        submitFragment.a(submitFragment.c());
                    } finally {
                        Callback.o();
                        SensorsDataAutoTrackHelper.trackViewOnClick(view);
                    }
                }
            });
            com.networkbench.agent.impl.data.a.a aVar3 = g.f37130a;
            if (aVar3 != null && (aVar3.k() || !ab.c(g.f37130a.i()))) {
                return viewInflate;
            }
            viewInflate.findViewById(R.id.lly_filter).setVisibility(4);
            return viewInflate;
        } catch (Throwable th) {
            f37038f.a("submitFragment error", th);
            return viewInflate;
        }
    }

    @Override // android.app.Fragment
    public void onHiddenChanged(boolean z) {
        super.onHiddenChanged(z);
        FragmentTrackHelper.trackOnHiddenChanged(this, z);
    }

    @Override // android.app.Fragment
    public void onPause() {
        super.onPause();
        FragmentTrackHelper.trackFragmentPause(this);
    }

    @Override // android.app.Fragment
    public void onResume() {
        super.onResume();
        FragmentTrackHelper.trackFragmentResume(this);
    }

    @Override // android.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        FragmentTrackHelper.onFragmentViewCreated(this, view, bundle);
    }

    @Override // android.app.Fragment
    public void setUserVisibleHint(boolean z) {
        super.setUserVisibleHint(z);
        FragmentTrackHelper.trackFragmentSetUserVisibleHint(this, z);
    }

    private String b() {
        String string = getArguments().getString(ActionFloatingViewItem.f37018a);
        return TextUtils.isEmpty(string) ? ScreenNameManager.getCurrentScreenName() : string;
    }
}
