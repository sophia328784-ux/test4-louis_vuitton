package com.batch.android.s0;

import android.content.Context;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import defpackage.md;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class a extends com.batch.android.j0.d implements c, com.batch.android.j0.b {
    private com.batch.android.j0.b.a G;
    private String H;
    private InterfaceC0072a I;
    private int J;

    /* JADX INFO: renamed from: com.batch.android.s0.a$a, reason: collision with other inner class name */
    public interface InterfaceC0072a {
        Map<String, String> a(a aVar, String str);
    }

    public a(Context context, String str, InterfaceC0072a interfaceC0072a) {
        super(context);
        this.J = 0;
        this.H = str;
        this.I = interfaceC0072a;
        if (TextUtils.isEmpty(str)) {
            md.n("separatorPrefix cannot be null or empty");
            throw null;
        }
        if (interfaceC0072a != null) {
            return;
        }
        md.n("styleProvider cannot be null");
        throw null;
    }

    @Override // com.batch.android.s0.c
    public void a(Map<String, String> map) {
        com.batch.android.o0.b.a(this, map);
        for (Map.Entry<String, String> entry : map.entrySet()) {
            if ("flex-justify".equalsIgnoreCase(entry.getKey())) {
                if ("center".equals(entry.getValue())) {
                    setJustifyContent(2);
                } else if ("end".equals(entry.getValue())) {
                    setJustifyContent(1);
                } else if ("start".equals(entry.getValue())) {
                    setJustifyContent(0);
                } else if ("space-around".equals(entry.getValue())) {
                    setJustifyContent(4);
                } else if ("space-between".equals(entry.getValue())) {
                    setJustifyContent(3);
                }
            } else if ("flex-align-items".equalsIgnoreCase(entry.getKey())) {
                if ("baseline".equals(entry.getValue())) {
                    setAlignItems(3);
                } else if ("center".equals(entry.getValue())) {
                    setAlignItems(2);
                } else if ("stretch".equals(entry.getValue())) {
                    setAlignItems(4);
                } else if ("end".equals(entry.getValue())) {
                    setAlignItems(1);
                } else if ("start".equals(entry.getValue())) {
                    setAlignItems(0);
                }
            } else if ("flex-align-content".equalsIgnoreCase(entry.getKey())) {
                if ("space-around".equals(entry.getValue())) {
                    setAlignContent(4);
                } else if ("space-between".equals(entry.getValue())) {
                    setAlignContent(3);
                } else if ("center".equals(entry.getValue())) {
                    setAlignContent(2);
                } else if ("stretch".equals(entry.getValue())) {
                    setAlignContent(5);
                } else if ("end".equals(entry.getValue())) {
                    setAlignContent(1);
                } else if ("start".equals(entry.getValue())) {
                    setAlignContent(0);
                }
            } else if ("flex-direction".equalsIgnoreCase(entry.getKey())) {
                if ("row".equals(entry.getValue())) {
                    setFlexDirection(0);
                } else if ("row-reverse".equals(entry.getValue())) {
                    setFlexDirection(1);
                } else if ("column".equals(entry.getValue())) {
                    setFlexDirection(2);
                } else if ("column-reverse".equals(entry.getValue())) {
                    setFlexDirection(3);
                }
            }
        }
    }

    @Override // android.view.ViewGroup
    public void addView(View view) {
        if (this.J == 0) {
            c();
        }
        super.addView(view);
        c();
    }

    @Override // com.batch.android.j0.b
    public boolean b(MotionEvent motionEvent) {
        return super.onInterceptTouchEvent(motionEvent);
    }

    public void c() {
        Map<String, String> mapA = this.I.a(this, this.H + "-sep-" + this.J);
        b bVar = new b(getContext());
        bVar.setLayoutParams(com.batch.android.o0.b.a(getContext(), new com.batch.android.j0.d.h(com.batch.android.o0.b.a(getResources(), Float.valueOf(10.0f)), 0), mapA));
        bVar.a(mapA);
        b(bVar);
        this.J++;
    }

    public boolean d() {
        int flexDirection = getFlexDirection();
        return flexDirection == 0 || flexDirection == 1;
    }

    public String getSeparatorPrefix() {
        return this.H;
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        com.batch.android.j0.b.a aVar = this.G;
        return aVar != null ? aVar.a(motionEvent, this) : super.onInterceptTouchEvent(motionEvent);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        com.batch.android.j0.b.a aVar = this.G;
        return aVar != null ? aVar.a(motionEvent, this, false) : super.onTouchEvent(motionEvent);
    }

    @Override // com.batch.android.j0.b
    public void setTouchEventDelegate(com.batch.android.j0.b.a aVar) {
        this.G = aVar;
    }

    private void b(View view) {
        super.addView(view);
    }

    @Override // com.batch.android.j0.b
    public boolean a(MotionEvent motionEvent) {
        return super.onTouchEvent(motionEvent);
    }
}
