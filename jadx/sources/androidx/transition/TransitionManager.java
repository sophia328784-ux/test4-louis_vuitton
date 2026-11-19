package androidx.transition;

import android.animation.Animator;
import android.os.Build;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.WindowId;
import androidx.collection.ArrayMap;
import androidx.collection.LongSparseArray;
import com.vuitton.android.R;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public class TransitionManager {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final AutoTransition f20020a = new AutoTransition();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final ThreadLocal f20021b = new ThreadLocal();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final ArrayList f20022c = new ArrayList();

    public static class MultiListener implements ViewTreeObserver.OnPreDrawListener, View.OnAttachStateChangeListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public Transition f20023b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public ViewGroup f20024c;

        /* JADX WARN: Code duplicated, block: B:101:0x0211  */
        /* JADX WARN: Code duplicated, block: B:102:0x021d  */
        /* JADX WARN: Code duplicated, block: B:106:0x0234  */
        /* JADX WARN: Code duplicated, block: B:138:0x02b4  */
        /* JADX WARN: Code duplicated, block: B:140:0x02c4  */
        /* JADX WARN: Code duplicated, block: B:144:0x02e4  */
        /* JADX WARN: Code duplicated, block: B:146:0x02ea  */
        /* JADX WARN: Code duplicated, block: B:148:0x02f0  */
        /* JADX WARN: Code duplicated, block: B:14:0x004e  */
        /* JADX WARN: Code duplicated, block: B:150:0x02ff  */
        /* JADX WARN: Code duplicated, block: B:153:0x0311  */
        /* JADX WARN: Code duplicated, block: B:155:0x0318  */
        /* JADX WARN: Code duplicated, block: B:157:0x031b  */
        /* JADX WARN: Code duplicated, block: B:159:0x0323 A[ORIG_RETURN, RETURN] */
        /* JADX WARN: Code duplicated, block: B:162:0x01db A[EDGE_INSN: B:162:0x01db->B:89:0x01db BREAK  A[LOOP:1: B:19:0x0083->B:88:0x01d4], SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:17:0x0058 A[LOOP:0: B:15:0x0052->B:17:0x0058, LOOP_END] */
        /* JADX WARN: Code duplicated, block: B:194:0x01fb A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:211:0x02cc A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:213:? A[RETURN, SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:21:0x0089  */
        /* JADX WARN: Code duplicated, block: B:23:0x008d A[DONT_INVERT] */
        /* JADX WARN: Code duplicated, block: B:24:0x008f  */
        /* JADX WARN: Code duplicated, block: B:26:0x0092  */
        /* JADX WARN: Code duplicated, block: B:29:0x009a  */
        /* JADX WARN: Code duplicated, block: B:31:0x00a5  */
        /* JADX WARN: Code duplicated, block: B:44:0x00ee  */
        /* JADX WARN: Code duplicated, block: B:46:0x00f8  */
        /* JADX WARN: Code duplicated, block: B:48:0x0106  */
        /* JADX WARN: Code duplicated, block: B:61:0x0149  */
        /* JADX WARN: Code duplicated, block: B:63:0x0155  */
        /* JADX WARN: Code duplicated, block: B:76:0x019a  */
        /* JADX WARN: Code duplicated, block: B:78:0x01a3  */
        /* JADX WARN: Code duplicated, block: B:92:0x01e2  */
        /* JADX WARN: Code duplicated, block: B:94:0x01f0  */
        /* JADX WARN: Code duplicated, block: B:99:0x0203  */
        /* JADX WARN: Instruction removed from duplicated block: B:148:0x02f0, please report this as an issue */
        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public final boolean onPreDraw() {
            ArrayList arrayList;
            int i2;
            TransitionValuesMaps transitionValuesMaps;
            TransitionValuesMaps transitionValuesMaps2;
            ArrayMap arrayMap;
            ArrayMap arrayMap2;
            int i3;
            int[] iArr;
            boolean z;
            int i4;
            int i5;
            ArrayMap arrayMapX;
            ArrayList arrayList2;
            int i6;
            int i7;
            Transition.SeekController seekController;
            int i8;
            Transition transition;
            Animator animator;
            Transition.AnimationInfo animationInfo;
            TransitionValues transitionValues;
            TransitionValues transitionValues2;
            int i9;
            boolean z2;
            int i10;
            int i11;
            View view;
            TransitionValues transitionValues3;
            ArrayMap arrayMap3;
            int i12;
            int i13;
            View view2;
            View view3;
            SparseArray sparseArray;
            int size;
            int i14;
            View view4;
            View view5;
            LongSparseArray longSparseArray;
            int iG;
            int i15;
            View view6;
            boolean z3;
            int i16;
            Iterator it;
            Transition transition2 = this.f20023b;
            ViewGroup viewGroup = this.f20024c;
            viewGroup.getViewTreeObserver().removeOnPreDrawListener(this);
            viewGroup.removeOnAttachStateChangeListener(this);
            boolean z4 = true;
            if (!TransitionManager.f20022c.remove(viewGroup)) {
                return true;
            }
            final ArrayMap arrayMapB = TransitionManager.b();
            ArrayList arrayList3 = (ArrayList) arrayMapB.get(viewGroup);
            if (arrayList3 != null) {
                arrayList = arrayList3.size() > 0 ? new ArrayList(arrayList3) : null;
                arrayList3.add(transition2);
                transition2.a(new TransitionListenerAdapter() { // from class: androidx.transition.TransitionManager.MultiListener.1
                    @Override // androidx.transition.TransitionListenerAdapter, androidx.transition.Transition.TransitionListener
                    public final void i(Transition transition3) {
                        ((ArrayList) arrayMapB.get(MultiListener.this.f20024c)).remove(transition3);
                        transition3.H(this);
                    }
                });
                i2 = 0;
                transition2.h(viewGroup, false);
                if (arrayList != null) {
                    it = arrayList.iterator();
                    while (it.hasNext()) {
                        ((Transition) it.next()).K(viewGroup);
                    }
                }
                transition2.l = new ArrayList();
                transition2.m = new ArrayList();
                transitionValuesMaps = transition2.f19998h;
                transitionValuesMaps2 = transition2.f19999i;
                arrayMap = new ArrayMap(transitionValuesMaps.f20033a);
                arrayMap2 = new ArrayMap(transitionValuesMaps2.f20033a);
                i3 = 0;
                while (true) {
                    iArr = transition2.f20001k;
                    if (i3 < iArr.length) {
                        break;
                    }
                    i9 = iArr[i3];
                    if (i9 != z4) {
                        z2 = z4;
                        i10 = i3;
                        for (i11 = arrayMap.d - 1; i11 >= 0; i11--) {
                            view = (View) arrayMap.g(i11);
                            if (view == null && transition2.D(view) && (transitionValues3 = (TransitionValues) arrayMap2.remove(view)) != null && transition2.D(transitionValues3.f20031b)) {
                                transition2.l.add((TransitionValues) arrayMap.i(i11));
                                transition2.m.add(transitionValues3);
                            }
                        }
                    } else if (i9 != 2) {
                        z2 = z4;
                        i10 = i3;
                        arrayMap3 = transitionValuesMaps.d;
                        ArrayMap arrayMap4 = transitionValuesMaps2.d;
                        i12 = arrayMap3.d;
                        for (i13 = 0; i13 < i12; i13++) {
                            view2 = (View) arrayMap3.k(i13);
                            if (view2 == null && transition2.D(view2) && (view3 = (View) arrayMap4.get((String) arrayMap3.g(i13))) != null && transition2.D(view3)) {
                                TransitionValues transitionValues4 = (TransitionValues) arrayMap.get(view2);
                                TransitionValues transitionValues5 = (TransitionValues) arrayMap2.get(view3);
                                if (transitionValues4 != null && transitionValues5 != null) {
                                    transition2.l.add(transitionValues4);
                                    transition2.m.add(transitionValues5);
                                    arrayMap.remove(view2);
                                    arrayMap2.remove(view3);
                                }
                            }
                        }
                    } else if (i9 != 3) {
                        if (i9 == 4) {
                            longSparseArray = transitionValuesMaps.f20035c;
                            LongSparseArray longSparseArray2 = transitionValuesMaps2.f20035c;
                            iG = longSparseArray.g();
                            i15 = i2;
                            while (i15 < iG) {
                                view6 = (View) longSparseArray.h(i15);
                                if (view6 == null && transition2.D(view6)) {
                                    i16 = i3;
                                    View view7 = (View) longSparseArray2.b(longSparseArray.d(i15));
                                    if (view7 == null || !transition2.D(view7)) {
                                        z3 = z4;
                                    } else {
                                        TransitionValues transitionValues6 = (TransitionValues) arrayMap.get(view6);
                                        z3 = z4;
                                        TransitionValues transitionValues7 = (TransitionValues) arrayMap2.get(view7);
                                        if (transitionValues6 != null && transitionValues7 != null) {
                                            transition2.l.add(transitionValues6);
                                            transition2.m.add(transitionValues7);
                                            arrayMap.remove(view6);
                                            arrayMap2.remove(view7);
                                        }
                                    }
                                } else {
                                    z3 = z4;
                                    i16 = i3;
                                }
                                i15++;
                                i3 = i16;
                                z4 = z3;
                            }
                        }
                        z2 = z4;
                        i10 = i3;
                    } else {
                        z2 = z4;
                        i10 = i3;
                        sparseArray = transitionValuesMaps.f20034b;
                        SparseArray sparseArray2 = transitionValuesMaps2.f20034b;
                        size = sparseArray.size();
                        for (i14 = 0; i14 < size; i14++) {
                            view4 = (View) sparseArray.valueAt(i14);
                            if (view4 == null && transition2.D(view4) && (view5 = (View) sparseArray2.get(sparseArray.keyAt(i14))) != null && transition2.D(view5)) {
                                TransitionValues transitionValues8 = (TransitionValues) arrayMap.get(view4);
                                TransitionValues transitionValues9 = (TransitionValues) arrayMap2.get(view5);
                                if (transitionValues8 != null && transitionValues9 != null) {
                                    transition2.l.add(transitionValues8);
                                    transition2.m.add(transitionValues9);
                                    arrayMap.remove(view4);
                                    arrayMap2.remove(view5);
                                }
                            }
                        }
                    }
                    i3 = i10 + 1;
                    z4 = z2;
                    i2 = 0;
                }
                z = z4;
                for (i4 = 0; i4 < arrayMap.d; i4++) {
                    transitionValues2 = (TransitionValues) arrayMap.k(i4);
                    if (transition2.D(transitionValues2.f20031b)) {
                        transition2.l.add(transitionValues2);
                        transition2.m.add(null);
                    }
                }
                for (i5 = 0; i5 < arrayMap2.d; i5++) {
                    transitionValues = (TransitionValues) arrayMap2.k(i5);
                    if (transition2.D(transitionValues.f20031b)) {
                        transition2.m.add(transitionValues);
                        transition2.l.add(null);
                    }
                }
                arrayMapX = Transition.x();
                int i17 = arrayMapX.d;
                WindowId windowId = viewGroup.getWindowId();
                arrayList2 = new ArrayList();
                i6 = i17 - 1;
                while (i6 >= 0) {
                    animator = (Animator) arrayMapX.g(i6);
                    if (animator == null && (animationInfo = (Transition.AnimationInfo) arrayMapX.get(animator)) != null) {
                        Transition transition3 = animationInfo.f20008e;
                        View view8 = animationInfo.f20005a;
                        if (view8 != null && windowId.equals(animationInfo.d)) {
                            TransitionValues transitionValues10 = animationInfo.f20007c;
                            boolean z5 = z;
                            TransitionValues transitionValuesZ = transition2.z(view8, z5);
                            TransitionValues transitionValuesV = transition2.v(view8, z5);
                            if (transitionValuesZ == null && transitionValuesV == null) {
                                transitionValuesV = (TransitionValues) transition2.f19999i.f20033a.get(view8);
                            }
                            if ((transitionValuesZ != null || transitionValuesV != null) && transition3.C(transitionValues10, transitionValuesV)) {
                                Transition transitionW = transition3.w();
                                ArrayList arrayList4 = transition3.o;
                                if (transitionW.z != null) {
                                    animator.cancel();
                                    arrayList4.remove(animator);
                                    arrayMapX.i(i6);
                                    if (arrayList4.size() == 0) {
                                        arrayList2.add(transition3);
                                    }
                                } else if (animator.isRunning() || animator.isStarted()) {
                                    animator.cancel();
                                } else {
                                    arrayMapX.i(i6);
                                }
                            }
                        }
                    }
                    i6--;
                    z = true;
                }
                for (i7 = 0; i7 < arrayList2.size(); i7++) {
                    transition = (Transition) arrayList2.get(i7);
                    transition.E(transition, Transition.TransitionNotification.f20018c, false);
                    if (!transition.s) {
                        transition.s = true;
                        transition.E(transition, Transition.TransitionNotification.f20017b, false);
                    }
                }
                transition2.l(viewGroup, transition2.f19998h, transition2.f19999i, transition2.l, transition2.m);
                if (transition2.z == null) {
                    transition2.L();
                    return true;
                }
                if (Build.VERSION.SDK_INT >= 34) {
                    return true;
                }
                transition2.G();
                Transition.SeekController seekController2 = transition2.z;
                TransitionSet transitionSet = seekController2.f20015h;
                long j2 = transitionSet.y == 0 ? 1L : 0L;
                transitionSet.M(j2, seekController2.f20010a);
                seekController2.f20010a = j2;
                seekController = transition2.z;
                seekController.f20011b = true;
                i8 = seekController.d;
                if (i8 == 1) {
                    seekController.d = 0;
                    seekController.d();
                    return true;
                }
                if (i8 == 2) {
                    return true;
                }
                seekController.d = 0;
                seekController.j(seekController.g);
                return true;
            }
            arrayList3 = new ArrayList();
            arrayMapB.put(viewGroup, arrayList3);
            arrayList3.add(transition2);
            transition2.a(new TransitionListenerAdapter() { // from class: androidx.transition.TransitionManager.MultiListener.1
                @Override // androidx.transition.TransitionListenerAdapter, androidx.transition.Transition.TransitionListener
                public final void i(Transition transition4) {
                    ((ArrayList) arrayMapB.get(MultiListener.this.f20024c)).remove(transition4);
                    transition4.H(this);
                }
            });
            i2 = 0;
            transition2.h(viewGroup, false);
            if (arrayList != null) {
                it = arrayList.iterator();
                while (it.hasNext()) {
                    ((Transition) it.next()).K(viewGroup);
                }
            }
            transition2.l = new ArrayList();
            transition2.m = new ArrayList();
            transitionValuesMaps = transition2.f19998h;
            transitionValuesMaps2 = transition2.f19999i;
            arrayMap = new ArrayMap(transitionValuesMaps.f20033a);
            arrayMap2 = new ArrayMap(transitionValuesMaps2.f20033a);
            i3 = 0;
            while (true) {
                iArr = transition2.f20001k;
                if (i3 < iArr.length) {
                    break;
                    break;
                }
                i9 = iArr[i3];
                if (i9 != z4) {
                    z2 = z4;
                    i10 = i3;
                    while (i11 >= 0) {
                        view = (View) arrayMap.g(i11);
                        if (view == null) {
                        }
                    }
                } else if (i9 != 2) {
                    z2 = z4;
                    i10 = i3;
                    arrayMap3 = transitionValuesMaps.d;
                    ArrayMap arrayMap5 = transitionValuesMaps2.d;
                    i12 = arrayMap3.d;
                    while (i13 < i12) {
                        view2 = (View) arrayMap3.k(i13);
                        if (view2 == null) {
                        }
                    }
                } else if (i9 != 3) {
                    if (i9 == 4) {
                        longSparseArray = transitionValuesMaps.f20035c;
                        LongSparseArray longSparseArray3 = transitionValuesMaps2.f20035c;
                        iG = longSparseArray.g();
                        i15 = i2;
                        while (i15 < iG) {
                            view6 = (View) longSparseArray.h(i15);
                            if (view6 == null) {
                                z3 = z4;
                                i16 = i3;
                            } else {
                                z3 = z4;
                                i16 = i3;
                            }
                            i15++;
                            i3 = i16;
                            z4 = z3;
                        }
                    }
                    z2 = z4;
                    i10 = i3;
                } else {
                    z2 = z4;
                    i10 = i3;
                    sparseArray = transitionValuesMaps.f20034b;
                    SparseArray sparseArray3 = transitionValuesMaps2.f20034b;
                    size = sparseArray.size();
                    while (i14 < size) {
                        view4 = (View) sparseArray.valueAt(i14);
                        if (view4 == null) {
                        }
                    }
                }
                i3 = i10 + 1;
                z4 = z2;
                i2 = 0;
            }
            z = z4;
            while (i4 < arrayMap.d) {
                transitionValues2 = (TransitionValues) arrayMap.k(i4);
                if (transition2.D(transitionValues2.f20031b)) {
                    transition2.l.add(transitionValues2);
                    transition2.m.add(null);
                }
            }
            while (i5 < arrayMap2.d) {
                transitionValues = (TransitionValues) arrayMap2.k(i5);
                if (transition2.D(transitionValues.f20031b)) {
                    transition2.m.add(transitionValues);
                    transition2.l.add(null);
                }
            }
            arrayMapX = Transition.x();
            int i18 = arrayMapX.d;
            WindowId windowId2 = viewGroup.getWindowId();
            arrayList2 = new ArrayList();
            i6 = i18 - 1;
            while (i6 >= 0) {
                animator = (Animator) arrayMapX.g(i6);
                if (animator == null) {
                }
                i6--;
                z = true;
            }
            while (i7 < arrayList2.size()) {
                transition = (Transition) arrayList2.get(i7);
                transition.E(transition, Transition.TransitionNotification.f20018c, false);
                if (!transition.s) {
                    transition.s = true;
                    transition.E(transition, Transition.TransitionNotification.f20017b, false);
                }
            }
            transition2.l(viewGroup, transition2.f19998h, transition2.f19999i, transition2.l, transition2.m);
            if (transition2.z == null) {
                transition2.L();
                return true;
            }
            if (Build.VERSION.SDK_INT >= 34) {
                return true;
            }
            transition2.G();
            Transition.SeekController seekController3 = transition2.z;
            TransitionSet transitionSet2 = seekController3.f20015h;
            if (transitionSet2.y == 0) {
            }
            transitionSet2.M(j2, seekController3.f20010a);
            seekController3.f20010a = j2;
            seekController = transition2.z;
            seekController.f20011b = true;
            i8 = seekController.d;
            if (i8 == 1) {
                seekController.d = 0;
                seekController.d();
                return true;
            }
            if (i8 == 2) {
                return true;
            }
            seekController.d = 0;
            seekController.j(seekController.g);
            return true;
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public final void onViewAttachedToWindow(View view) {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public final void onViewDetachedFromWindow(View view) {
            ViewGroup viewGroup = this.f20024c;
            viewGroup.getViewTreeObserver().removeOnPreDrawListener(this);
            viewGroup.removeOnAttachStateChangeListener(this);
            TransitionManager.f20022c.remove(viewGroup);
            ArrayList arrayList = (ArrayList) TransitionManager.b().get(viewGroup);
            if (arrayList != null && arrayList.size() > 0) {
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    ((Transition) it.next()).K(viewGroup);
                }
            }
            this.f20023b.i(true);
        }
    }

    public TransitionManager() {
        new ArrayMap();
        new ArrayMap();
    }

    public static void a(ViewGroup viewGroup, Transition transition) {
        ArrayList arrayList = f20022c;
        if (arrayList.contains(viewGroup) || !viewGroup.isLaidOut()) {
            return;
        }
        arrayList.add(viewGroup);
        if (transition == null) {
            transition = f20020a;
        }
        Transition transitionClone = transition.clone();
        c(viewGroup, transitionClone);
        viewGroup.setTag(R.id.transition_current_scene, null);
        MultiListener multiListener = new MultiListener();
        multiListener.f20023b = transitionClone;
        multiListener.f20024c = viewGroup;
        viewGroup.addOnAttachStateChangeListener(multiListener);
        viewGroup.getViewTreeObserver().addOnPreDrawListener(multiListener);
    }

    public static ArrayMap b() {
        ArrayMap arrayMap;
        ThreadLocal threadLocal = f20021b;
        WeakReference weakReference = (WeakReference) threadLocal.get();
        if (weakReference != null && (arrayMap = (ArrayMap) weakReference.get()) != null) {
            return arrayMap;
        }
        ArrayMap arrayMap2 = new ArrayMap();
        threadLocal.set(new WeakReference(arrayMap2));
        return arrayMap2;
    }

    public static void c(ViewGroup viewGroup, Transition transition) {
        ArrayList arrayList = (ArrayList) b().get(viewGroup);
        if (arrayList != null && arrayList.size() > 0) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                ((Transition) it.next()).F(viewGroup);
            }
        }
        if (transition != null) {
            transition.h(viewGroup, true);
        }
        Scene scene = (Scene) viewGroup.getTag(R.id.transition_current_scene);
        if (scene != null) {
        }
    }
}
