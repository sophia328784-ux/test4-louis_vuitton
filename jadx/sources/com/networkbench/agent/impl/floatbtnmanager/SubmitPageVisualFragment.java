package com.networkbench.agent.impl.floatbtnmanager;

import android.app.Fragment;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Paint;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.RectShape;
import android.os.Bundle;
import android.text.InputFilter;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.dynatrace.android.callback.Callback;
import com.networkbench.agent.impl.harvest.Harvest;
import com.networkbench.agent.impl.util.r;
import com.sensorsdata.analytics.android.autotrack.aop.FragmentTrackHelper;
import com.sensorsdata.analytics.android.autotrack.aop.SensorsDataAutoTrackHelper;
import defpackage.n00;
import defpackage.z81;
import java.io.File;

/* JADX INFO: loaded from: classes2.dex */
public class SubmitPageVisualFragment extends Fragment implements View.OnClickListener {
    private static final int A = 1118480;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static int f37052b = 13;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static int f37053c = 20;
    private static int d = 150;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static int f37054e = 150;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static int f37055f = 1000;
    private static int g = 1193046;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static int f37056h = 8947302;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final float f37057i = 18.0f;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final int f37058j = 1048575;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final int f37059k = 69905;
    private static final int l = 69906;
    private static final int m = 69907;
    private static final int n = 69908;
    private static final int o = 69909;
    private static final int p = 32;
    private static Bitmap t = null;
    private static final String u = "selectpage.png";
    private static final int w = -591618;
    private static final int y = -11440145;
    private static final int z = 69911;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f37060a;
    private EditText q;
    private l r;
    private j s;
    private static final com.networkbench.agent.impl.c.e v = com.networkbench.agent.impl.c.f.a();
    private static m x = new m();

    public class a implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private String f37064b;

        public a(String str) {
            this.f37064b = str == null ? "" : str;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                Harvest.getInstance().getHarvestConnection().sendVisualInfo(SubmitPageVisualFragment.this.r, SubmitPageVisualFragment.x, this.f37064b);
            } catch (Throwable th) {
                z81.k(new StringBuilder(" SubmitPageVisualFragment run  has an error : "), th);
            }
        }
    }

    static {
        com.networkbench.agent.impl.util.c.c.a().a(new Runnable() { // from class: com.networkbench.agent.impl.floatbtnmanager.SubmitPageVisualFragment.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    Harvest.getInstance().getHarvestConnection().getActionDefinerHost();
                } catch (Throwable th) {
                    z81.k(new StringBuilder(" SubmitPageVisualFragment run  has an error : "), th);
                }
            }
        });
    }

    private TextView a(String str, int i2) {
        TextView textView = new TextView(this.f37060a);
        textView.setLayoutParams(new LinearLayout.LayoutParams(-2, -2, 1.0f));
        ((LinearLayout.LayoutParams) textView.getLayoutParams()).gravity = 17;
        textView.setText(str);
        textView.setTextColor(y);
        textView.setTextSize(f37057i);
        textView.setId(i2);
        textView.setTextAlignment(4);
        textView.setOnClickListener(this);
        return textView;
    }

    private RelativeLayout b() {
        RelativeLayout relativeLayout = new RelativeLayout(this.f37060a);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        int i2 = f37053c;
        layoutParams.leftMargin = i2 * 2;
        layoutParams.topMargin = i2 * 2;
        layoutParams.rightMargin = i2 * 2;
        relativeLayout.setLayoutParams(layoutParams);
        relativeLayout.setBackgroundColor(-1);
        TextView textView = new TextView(this.f37060a);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams2.addRule(14);
        textView.setId(1118481);
        textView.setText("页面截图");
        textView.setTextSize(f37057i);
        layoutParams2.topMargin = f37053c;
        textView.setLayoutParams(layoutParams2);
        relativeLayout.addView(textView);
        View view = new View(this.f37060a);
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-2, 1);
        layoutParams3.addRule(3, 1118481);
        layoutParams3.topMargin = f37053c;
        view.setBackgroundColor(-7829368);
        view.setId(1118484);
        view.setLayoutParams(layoutParams3);
        relativeLayout.addView(view);
        ImageView imageViewF = f();
        imageViewF.setId(f37056h);
        imageViewF.setLayoutParams(a(t.getWidth(), t.getHeight(), imageViewF));
        ((RelativeLayout.LayoutParams) imageViewF.getLayoutParams()).addRule(3, 1118484);
        ((RelativeLayout.LayoutParams) imageViewF.getLayoutParams()).topMargin = f37053c;
        ((RelativeLayout.LayoutParams) imageViewF.getLayoutParams()).bottomMargin = f37053c;
        imageViewF.setImageBitmap(t);
        relativeLayout.addView(imageViewF);
        return relativeLayout;
    }

    private RelativeLayout c() {
        RelativeLayout relativeLayout = new RelativeLayout(this.f37060a);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams.addRule(10);
        relativeLayout.setPadding(0, d, 0, 0);
        relativeLayout.setBackgroundColor(-1);
        relativeLayout.setId(z);
        relativeLayout.setLayoutParams(layoutParams);
        TextView textView = new TextView(this.f37060a);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams2.leftMargin = f37053c;
        textView.setLayoutParams(layoutParams2);
        textView.setText("< 返回");
        textView.setTextSize(f37057i);
        textView.setTextColor(y);
        textView.setOnClickListener(this);
        textView.setId(f37059k);
        TextView textView2 = new TextView(this.f37060a);
        textView2.setLayoutParams(new RelativeLayout.LayoutParams(-2, -2));
        ((RelativeLayout.LayoutParams) textView2.getLayoutParams()).addRule(14);
        textView2.setText("可视化页面命名");
        textView2.setTextSize(f37057i);
        relativeLayout.addView(textView);
        relativeLayout.addView(textView2);
        relativeLayout.addView(d());
        View view = new View(this.f37060a);
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-2, 1);
        layoutParams3.addRule(3, A);
        layoutParams3.topMargin = f37053c;
        view.setBackgroundColor(-7829368);
        view.setLayoutParams(layoutParams3);
        relativeLayout.addView(view);
        return relativeLayout;
    }

    private LinearLayout d() {
        LinearLayout linearLayout = new LinearLayout(this.f37060a);
        linearLayout.setId(g);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams.addRule(3, f37059k);
        int i2 = f37053c;
        layoutParams.leftMargin = i2 * 2;
        layoutParams.topMargin = i2 * 2;
        linearLayout.setOrientation(0);
        linearLayout.setLayoutParams(layoutParams);
        linearLayout.setId(A);
        EditText editTextB = b("请输入页面名称", m);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams2.weight = 3.0f;
        editTextB.setLayoutParams(layoutParams2);
        this.q = editTextB;
        View viewA = a("上传", f37058j);
        linearLayout.addView(editTextB);
        linearLayout.addView(viewA);
        return linearLayout;
    }

    private ShapeDrawable e() {
        ShapeDrawable shapeDrawable = new ShapeDrawable(new RectShape());
        shapeDrawable.getPaint().setColor(com.batch.android.q0.b.v);
        shapeDrawable.getPaint().setStyle(Paint.Style.STROKE);
        shapeDrawable.getPaint().setStrokeWidth(2.0f);
        return shapeDrawable;
    }

    private ImageView f() {
        ImageView imageView = new ImageView(this.f37060a);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, f37055f);
        layoutParams.addRule(14);
        imageView.setLayoutParams(layoutParams);
        return imageView;
    }

    private void g() throws Throwable {
        String string = this.q.getText().toString();
        StringBuilder sb = new StringBuilder();
        sb.append(e.a(getActivity()));
        String strR = n00.r(File.separator, u, sb);
        e.a(strR, t);
        m mVar = x;
        if (string == null) {
            string = "";
        }
        mVar.c(string);
        x.f(strR);
    }

    @Override // android.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        try {
            t = PageFloatingBtn.f37032a;
            x.e(c.f37079b);
            x.b(c.f37080c);
            com.networkbench.agent.impl.data.d.b.a().b();
            if (com.networkbench.agent.impl.data.d.h.f36878a == null) {
                r.A.a("NBSPageData.lastPageData == null:" + com.networkbench.agent.impl.data.d.b.a().b().toJsonString());
                x.d(com.networkbench.agent.impl.data.d.b.a().b().toJsonString());
            } else {
                String strB = com.networkbench.agent.impl.data.d.j.b();
                if (!TextUtils.isEmpty(strB)) {
                    com.networkbench.agent.impl.data.d.h.f36878a.a(strB);
                }
                if (TextUtils.isEmpty(com.networkbench.agent.impl.data.d.h.f36878a.d())) {
                    com.networkbench.agent.impl.data.d.h.f36878a.a(com.networkbench.agent.impl.data.d.b.a().b().d());
                }
                r.A.a("NBSPageData.lastPageData != null:" + com.networkbench.agent.impl.data.d.h.f36878a.toJsonString());
                x.d(com.networkbench.agent.impl.data.d.h.f36878a.toJsonString());
            }
            if (getArguments() != null) {
                x.f37117a = (com.networkbench.agent.impl.data.a.a) getArguments().getSerializable(ActionFloatingViewItem.f37019b);
            }
            this.r = new l() { // from class: com.networkbench.agent.impl.floatbtnmanager.SubmitPageVisualFragment.2
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
                    SubmitPageVisualFragment.b(str);
                }
            };
        } catch (Throwable th) {
            v.a("error submitPageVisualFragment onAttach", th);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        Callback.n(view);
        try {
            int id = view.getId();
            if (id == f37059k) {
                getActivity().getFragmentManager().popBackStack();
            } else if (id == f37058j) {
                if (TextUtils.isEmpty(this.q.getText().toString().trim())) {
                    Toast.makeText(r.u().J(), "页面名称为空， 请设置相应页面", 1).show();
                    return;
                }
                g();
                com.networkbench.agent.impl.util.c.c cVarA = com.networkbench.agent.impl.util.c.c.a();
                com.networkbench.agent.impl.data.a.a aVar = x.f37117a;
                cVarA.a(new a(aVar == null ? "" : aVar.a(true, true)));
                getActivity().getFragmentManager().popBackStack();
            }
        } finally {
            Callback.o();
            SensorsDataAutoTrackHelper.trackViewOnClick(view);
        }
    }

    @Override // android.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        Context context = layoutInflater.getContext();
        this.f37060a = context;
        this.s = new j(context);
        float f2 = this.f37060a.getResources().getDisplayMetrics().density;
        f37053c = (int) (7.0f * f2);
        f37052b = (int) (13.0f * f2);
        d = (int) (40.0f * f2);
        f37054e = (int) (50.0f * f2);
        f37055f = (int) (f2 * 400.0f);
        RelativeLayout relativeLayoutA = this.s.a();
        relativeLayoutA.addView(c());
        RelativeLayout relativeLayoutB = b();
        ((RelativeLayout.LayoutParams) relativeLayoutB.getLayoutParams()).addRule(3, z);
        relativeLayoutA.addView(relativeLayoutB);
        return relativeLayoutA;
    }

    @Override // android.app.Fragment
    public void onHiddenChanged(boolean z2) {
        super.onHiddenChanged(z2);
        FragmentTrackHelper.trackOnHiddenChanged(this, z2);
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
    public void setUserVisibleHint(boolean z2) {
        super.setUserVisibleHint(z2);
        FragmentTrackHelper.trackFragmentSetUserVisibleHint(this, z2);
    }

    private LinearLayout a(int i2, int i3) {
        LinearLayout linearLayout = new LinearLayout(this.f37060a);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(i2, i3);
        int i4 = f37053c;
        layoutParams.leftMargin = i4;
        layoutParams.rightMargin = i4;
        layoutParams.topMargin = i4;
        linearLayout.setLayoutParams(layoutParams);
        return linearLayout;
    }

    private RelativeLayout.LayoutParams a(int i2, int i3, View view) {
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) view.getLayoutParams();
        layoutParams.width = (i2 * layoutParams.height) / i3;
        return layoutParams;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(final String str) {
        if (c.a().f() == null || c.a().f().get() == null) {
            return;
        }
        c.a().f().get().runOnUiThread(new Runnable() { // from class: com.networkbench.agent.impl.floatbtnmanager.SubmitPageVisualFragment.3
            @Override // java.lang.Runnable
            public void run() {
                Toast.makeText(c.a().f().get(), str, 1).show();
            }
        });
    }

    private EditText b(String str, int i2) {
        EditText editText = new EditText(this.f37060a);
        editText.setHint(str);
        editText.setSingleLine();
        editText.setId(i2);
        editText.setBackground(e());
        editText.setFilters(new InputFilter[]{new InputFilter.LengthFilter(32)});
        return editText;
    }
}
