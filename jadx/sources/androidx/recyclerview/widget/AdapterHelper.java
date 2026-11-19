package androidx.recyclerview.widget;

import androidx.core.util.Pools$SimplePool;
import defpackage.a;
import defpackage.az;
import defpackage.md;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
final class AdapterHelper implements OpReorderer.Callback {
    public final RecyclerView.AnonymousClass7 d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Pools$SimplePool f19133a = new Pools$SimplePool(30);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ArrayList f19134b = new ArrayList();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ArrayList f19135c = new ArrayList();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f19137f = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final OpReorderer f19136e = new OpReorderer(this);

    public interface Callback {
    }

    public static final class UpdateOp {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f19138a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f19139b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public Object f19140c;
        public int d;

        public final boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof UpdateOp)) {
                    return false;
                }
                UpdateOp updateOp = (UpdateOp) obj;
                int i2 = this.f19138a;
                if (i2 != updateOp.f19138a) {
                    return false;
                }
                if (i2 != 8 || Math.abs(this.d - this.f19139b) != 1 || this.d != updateOp.f19139b || this.f19139b != updateOp.d) {
                    if (this.d != updateOp.d || this.f19139b != updateOp.f19139b) {
                        return false;
                    }
                    Object obj2 = this.f19140c;
                    Object obj3 = updateOp.f19140c;
                    if (obj2 != null) {
                        if (!obj2.equals(obj3)) {
                            return false;
                        }
                    } else if (obj3 != null) {
                        return false;
                    }
                }
            }
            return true;
        }

        public final int hashCode() {
            return (((this.f19138a * 31) + this.f19139b) * 31) + this.d;
        }

        public final String toString() {
            String str;
            StringBuilder sb = new StringBuilder();
            sb.append(Integer.toHexString(System.identityHashCode(this)));
            sb.append("[");
            int i2 = this.f19138a;
            if (i2 == 1) {
                str = "add";
            } else if (i2 == 2) {
                str = "rm";
            } else if (i2 != 4) {
                str = i2 != 8 ? "??" : "mv";
            } else {
                str = "up";
            }
            sb.append(str);
            sb.append(",s:");
            sb.append(this.f19139b);
            sb.append("c:");
            sb.append(this.d);
            sb.append(",p:");
            return a.n(sb, this.f19140c, "]");
        }
    }

    public AdapterHelper(RecyclerView.AnonymousClass7 anonymousClass7) {
        this.d = anonymousClass7;
    }

    public final boolean a(int i2) {
        ArrayList arrayList = this.f19135c;
        int size = arrayList.size();
        for (int i3 = 0; i3 < size; i3++) {
            UpdateOp updateOp = (UpdateOp) arrayList.get(i3);
            int i4 = updateOp.f19138a;
            if (i4 != 8) {
                if (i4 == 1) {
                    int i5 = updateOp.f19139b;
                    int i6 = updateOp.d + i5;
                    while (i5 < i6) {
                        if (f(i5, i3 + 1) == i2) {
                            return true;
                        }
                        i5++;
                    }
                } else {
                    continue;
                }
            } else {
                if (f(updateOp.d, i3 + 1) == i2) {
                    return true;
                }
            }
        }
        return false;
    }

    public final void b() {
        ArrayList arrayList = this.f19135c;
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.d.a((UpdateOp) arrayList.get(i2));
        }
        k(arrayList);
        this.f19137f = 0;
    }

    public final void c() {
        b();
        ArrayList arrayList = this.f19134b;
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            UpdateOp updateOp = (UpdateOp) arrayList.get(i2);
            int i3 = updateOp.f19138a;
            RecyclerView.AnonymousClass7 anonymousClass7 = this.d;
            if (i3 == 1) {
                anonymousClass7.a(updateOp);
                anonymousClass7.d(updateOp.f19139b, updateOp.d);
            } else if (i3 == 2) {
                anonymousClass7.a(updateOp);
                anonymousClass7.f(updateOp.f19139b, updateOp.d);
            } else if (i3 == 4) {
                anonymousClass7.a(updateOp);
                anonymousClass7.c(updateOp.f19139b, updateOp.d, updateOp.f19140c);
            } else if (i3 == 8) {
                anonymousClass7.a(updateOp);
                anonymousClass7.e(updateOp.f19139b, updateOp.d);
            }
        }
        k(arrayList);
        this.f19137f = 0;
    }

    public final void d(UpdateOp updateOp) {
        int i2;
        Pools$SimplePool pools$SimplePool;
        int i3 = updateOp.f19138a;
        if (i3 == 1 || i3 == 8) {
            md.n("should not dispatch add or move for pre layout");
            return;
        }
        int iL = l(updateOp.f19139b, i3);
        int i4 = updateOp.f19139b;
        int i5 = updateOp.f19138a;
        if (i5 == 2) {
            i2 = 0;
        } else {
            if (i5 != 4) {
                az.m(updateOp, "op should be remove or update.");
                return;
            }
            i2 = 1;
        }
        int i6 = 1;
        int i7 = 1;
        while (true) {
            int i8 = updateOp.d;
            pools$SimplePool = this.f19133a;
            if (i6 >= i8) {
                break;
            }
            int iL2 = l((i2 * i6) + updateOp.f19139b, updateOp.f19138a);
            int i9 = updateOp.f19138a;
            if (i9 == 2 ? iL2 != iL : !(i9 == 4 && iL2 == iL + 1)) {
                UpdateOp updateOpH = h(i9, iL, i7, updateOp.f19140c);
                e(updateOpH, i4);
                updateOpH.f19140c = null;
                pools$SimplePool.release(updateOpH);
                if (updateOp.f19138a == 4) {
                    i4 += i7;
                }
                i7 = 1;
                iL = iL2;
            } else {
                i7++;
            }
            i6++;
        }
        Object obj = updateOp.f19140c;
        updateOp.f19140c = null;
        pools$SimplePool.release(updateOp);
        if (i7 > 0) {
            UpdateOp updateOpH2 = h(updateOp.f19138a, iL, i7, obj);
            e(updateOpH2, i4);
            updateOpH2.f19140c = null;
            pools$SimplePool.release(updateOpH2);
        }
    }

    public final void e(UpdateOp updateOp, int i2) {
        RecyclerView.AnonymousClass7 anonymousClass7 = this.d;
        anonymousClass7.a(updateOp);
        int i3 = updateOp.f19138a;
        if (i3 == 2) {
            anonymousClass7.f(i2, updateOp.d);
        } else if (i3 == 4) {
            anonymousClass7.c(i2, updateOp.d, updateOp.f19140c);
        } else {
            md.n("only remove and update ops can be dispatched in first pass");
        }
    }

    public final int f(int i2, int i3) {
        ArrayList arrayList = this.f19135c;
        int size = arrayList.size();
        while (i3 < size) {
            UpdateOp updateOp = (UpdateOp) arrayList.get(i3);
            int i4 = updateOp.f19138a;
            int i5 = updateOp.f19139b;
            if (i4 == 8) {
                if (i5 == i2) {
                    i2 = updateOp.d;
                } else {
                    if (i5 < i2) {
                        i2--;
                    }
                    if (updateOp.d <= i2) {
                        i2++;
                    }
                }
            } else if (i5 > i2) {
                continue;
            } else if (i4 == 2) {
                int i6 = updateOp.d;
                if (i2 < i5 + i6) {
                    return -1;
                }
                i2 -= i6;
            } else if (i4 == 1) {
                i2 += updateOp.d;
            }
            i3++;
        }
        return i2;
    }

    public final boolean g() {
        return this.f19134b.size() > 0;
    }

    public final UpdateOp h(int i2, int i3, int i4, Object obj) {
        UpdateOp updateOp = (UpdateOp) this.f19133a.acquire();
        if (updateOp != null) {
            updateOp.f19138a = i2;
            updateOp.f19139b = i3;
            updateOp.d = i4;
            updateOp.f19140c = obj;
            return updateOp;
        }
        UpdateOp updateOp2 = new UpdateOp();
        updateOp2.f19138a = i2;
        updateOp2.f19139b = i3;
        updateOp2.d = i4;
        updateOp2.f19140c = obj;
        return updateOp2;
    }

    public final void i(UpdateOp updateOp) {
        this.f19135c.add(updateOp);
        int i2 = updateOp.f19138a;
        RecyclerView.AnonymousClass7 anonymousClass7 = this.d;
        if (i2 == 1) {
            anonymousClass7.d(updateOp.f19139b, updateOp.d);
            return;
        }
        if (i2 == 2) {
            int i3 = updateOp.f19139b;
            int i4 = updateOp.d;
            RecyclerView recyclerView = RecyclerView.this;
            recyclerView.offsetPositionRecordsForRemove(i3, i4, false);
            recyclerView.mItemsAddedOrRemoved = true;
            return;
        }
        if (i2 == 4) {
            anonymousClass7.c(updateOp.f19139b, updateOp.d, updateOp.f19140c);
        } else if (i2 == 8) {
            anonymousClass7.e(updateOp.f19139b, updateOp.d);
        } else {
            az.m(updateOp, "Unknown update op type for ");
        }
    }

    /* JADX WARN: Code duplicated, block: B:101:0x0183  */
    /* JADX WARN: Code duplicated, block: B:102:0x0187  */
    /* JADX WARN: Code duplicated, block: B:181:0x009f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:182:0x011b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:185:0x010e A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:186:0x018c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:195:0x0007 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:199:0x0007 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:29:0x006b  */
    /* JADX WARN: Code duplicated, block: B:30:0x0070  */
    /* JADX WARN: Code duplicated, block: B:32:0x0075  */
    /* JADX WARN: Code duplicated, block: B:36:0x008c  */
    /* JADX WARN: Code duplicated, block: B:37:0x0090  */
    /* JADX WARN: Code duplicated, block: B:39:0x009a  */
    /* JADX WARN: Code duplicated, block: B:73:0x011d  */
    /* JADX WARN: Code duplicated, block: B:74:0x011f  */
    /* JADX WARN: Code duplicated, block: B:76:0x0125  */
    /* JADX WARN: Code duplicated, block: B:79:0x0130  */
    /* JADX WARN: Code duplicated, block: B:82:0x013b  */
    /* JADX WARN: Code duplicated, block: B:85:0x0146  */
    /* JADX WARN: Code duplicated, block: B:86:0x014c  */
    /* JADX WARN: Code duplicated, block: B:87:0x014e  */
    /* JADX WARN: Code duplicated, block: B:89:0x0154  */
    /* JADX WARN: Code duplicated, block: B:92:0x015f  */
    /* JADX WARN: Code duplicated, block: B:95:0x016a  */
    /* JADX WARN: Code duplicated, block: B:98:0x0175  */
    public final void j() {
        ArrayList arrayList;
        int i2;
        byte b2;
        boolean z;
        byte b3;
        UpdateOp updateOpH;
        int i3;
        int i4;
        int i5;
        UpdateOp updateOpH2;
        boolean z2;
        boolean z3;
        UpdateOp updateOpH3;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        OpReorderer opReorderer = this.f19136e;
        opReorderer.getClass();
        while (true) {
            arrayList = this.f19134b;
            int size = arrayList.size() - 1;
            boolean z4 = false;
            while (true) {
                i2 = 8;
                b2 = -1;
                if (size < 0) {
                    size = -1;
                    break;
                }
                if (((UpdateOp) arrayList.get(size)).f19138a != 8) {
                    z4 = true;
                } else if (z4) {
                    break;
                }
                size--;
            }
            if (size == -1) {
                break;
            }
            int i14 = size + 1;
            AdapterHelper adapterHelper = opReorderer.f19253a;
            Pools$SimplePool pools$SimplePool = adapterHelper.f19133a;
            UpdateOp updateOp = (UpdateOp) arrayList.get(size);
            UpdateOp updateOp2 = (UpdateOp) arrayList.get(i14);
            int i15 = updateOp2.f19138a;
            if (i15 == 1) {
                int i16 = updateOp.d;
                int i17 = updateOp2.f19139b;
                int i18 = i16 < i17 ? -1 : 0;
                int i19 = updateOp.f19139b;
                if (i19 < i17) {
                    i18++;
                }
                if (i17 <= i19) {
                    updateOp.f19139b = i19 + updateOp2.d;
                }
                int i20 = updateOp2.f19139b;
                if (i20 <= i16) {
                    updateOp.d = i16 + updateOp2.d;
                }
                updateOp2.f19139b = i20 + i18;
                arrayList.set(size, updateOp2);
                arrayList.set(i14, updateOp);
            } else if (i15 == 2) {
                int i21 = updateOp.f19139b;
                int i22 = updateOp.d;
                int i23 = updateOp2.f19139b;
                if (i21 < i22) {
                    z3 = i23 == i21 && updateOp2.d == i22 - i21;
                    z2 = false;
                } else if (i23 == i22 + 1 && updateOp2.d == i21 - i22) {
                    z3 = true;
                    z2 = true;
                } else {
                    z2 = true;
                    z3 = false;
                }
                if (i22 < i23) {
                    updateOp2.f19139b = i23 - 1;
                } else {
                    int i24 = updateOp2.d;
                    if (i22 < i23 + i24) {
                        updateOp2.d = i24 - 1;
                        updateOp.f19138a = 2;
                        updateOp.d = 1;
                        if (updateOp2.d == 0) {
                            arrayList.remove(i14);
                            updateOp2.f19140c = null;
                            pools$SimplePool.release(updateOp2);
                        }
                    }
                }
                int i25 = updateOp.f19139b;
                int i26 = updateOp2.f19139b;
                if (i25 <= i26) {
                    updateOp2.f19139b = i26 + 1;
                } else {
                    int i27 = i26 + updateOp2.d;
                    if (i25 < i27) {
                        updateOpH3 = adapterHelper.h(2, i25 + 1, i27 - i25, null);
                        updateOp2.d = updateOp.f19139b - updateOp2.f19139b;
                    }
                    if (z3) {
                        arrayList.set(size, updateOp2);
                        arrayList.remove(i14);
                        updateOp.f19140c = null;
                        pools$SimplePool.release(updateOp);
                    } else {
                        if (z2) {
                            if (updateOpH3 != null) {
                                i12 = updateOp.f19139b;
                                if (i12 > updateOpH3.f19139b) {
                                    updateOp.f19139b = i12 - updateOpH3.d;
                                }
                                i13 = updateOp.d;
                                if (i13 > updateOpH3.f19139b) {
                                    updateOp.d = i13 - updateOpH3.d;
                                }
                            }
                            i10 = updateOp.f19139b;
                            if (i10 > updateOp2.f19139b) {
                                updateOp.f19139b = i10 - updateOp2.d;
                            }
                            i11 = updateOp.d;
                            if (i11 > updateOp2.f19139b) {
                                updateOp.d = i11 - updateOp2.d;
                            }
                        } else {
                            if (updateOpH3 != null) {
                                i8 = updateOp.f19139b;
                                if (i8 >= updateOpH3.f19139b) {
                                    updateOp.f19139b = i8 - updateOpH3.d;
                                }
                                i9 = updateOp.d;
                                if (i9 >= updateOpH3.f19139b) {
                                    updateOp.d = i9 - updateOpH3.d;
                                }
                            }
                            i6 = updateOp.f19139b;
                            if (i6 >= updateOp2.f19139b) {
                                updateOp.f19139b = i6 - updateOp2.d;
                            }
                            i7 = updateOp.d;
                            if (i7 >= updateOp2.f19139b) {
                                updateOp.d = i7 - updateOp2.d;
                            }
                        }
                        arrayList.set(size, updateOp2);
                        if (updateOp.f19139b != updateOp.d) {
                            arrayList.set(i14, updateOp);
                        } else {
                            arrayList.remove(i14);
                        }
                        if (updateOpH3 != null) {
                            arrayList.add(size, updateOpH3);
                        }
                    }
                }
                updateOpH3 = null;
                if (z3) {
                    arrayList.set(size, updateOp2);
                    arrayList.remove(i14);
                    updateOp.f19140c = null;
                    pools$SimplePool.release(updateOp);
                } else {
                    if (z2) {
                        if (updateOpH3 != null) {
                            i12 = updateOp.f19139b;
                            if (i12 > updateOpH3.f19139b) {
                                updateOp.f19139b = i12 - updateOpH3.d;
                            }
                            i13 = updateOp.d;
                            if (i13 > updateOpH3.f19139b) {
                                updateOp.d = i13 - updateOpH3.d;
                            }
                        }
                        i10 = updateOp.f19139b;
                        if (i10 > updateOp2.f19139b) {
                            updateOp.f19139b = i10 - updateOp2.d;
                        }
                        i11 = updateOp.d;
                        if (i11 > updateOp2.f19139b) {
                            updateOp.d = i11 - updateOp2.d;
                        }
                    } else {
                        if (updateOpH3 != null) {
                            i8 = updateOp.f19139b;
                            if (i8 >= updateOpH3.f19139b) {
                                updateOp.f19139b = i8 - updateOpH3.d;
                            }
                            i9 = updateOp.d;
                            if (i9 >= updateOpH3.f19139b) {
                                updateOp.d = i9 - updateOpH3.d;
                            }
                        }
                        i6 = updateOp.f19139b;
                        if (i6 >= updateOp2.f19139b) {
                            updateOp.f19139b = i6 - updateOp2.d;
                        }
                        i7 = updateOp.d;
                        if (i7 >= updateOp2.f19139b) {
                            updateOp.d = i7 - updateOp2.d;
                        }
                    }
                    arrayList.set(size, updateOp2);
                    if (updateOp.f19139b != updateOp.d) {
                        arrayList.set(i14, updateOp);
                    } else {
                        arrayList.remove(i14);
                    }
                    if (updateOpH3 != null) {
                        arrayList.add(size, updateOpH3);
                    }
                }
            } else if (i15 == 4) {
                int i28 = updateOp.d;
                int i29 = updateOp2.f19139b;
                if (i28 < i29) {
                    updateOp2.f19139b = i29 - 1;
                } else {
                    int i30 = updateOp2.d;
                    if (i28 < i29 + i30) {
                        updateOp2.d = i30 - 1;
                        updateOpH = adapterHelper.h(4, updateOp.f19139b, 1, updateOp2.f19140c);
                    }
                    i3 = updateOp.f19139b;
                    i4 = updateOp2.f19139b;
                    if (i3 <= i4) {
                        updateOp2.f19139b = i4 + 1;
                    } else {
                        i5 = i4 + updateOp2.d;
                        if (i3 < i5) {
                            int i31 = i5 - i3;
                            updateOpH2 = adapterHelper.h(4, i3 + 1, i31, updateOp2.f19140c);
                            updateOp2.d -= i31;
                        }
                        arrayList.set(i14, updateOp);
                        if (updateOp2.d > 0) {
                            arrayList.set(size, updateOp2);
                        } else {
                            arrayList.remove(size);
                            updateOp2.f19140c = null;
                            pools$SimplePool.release(updateOp2);
                        }
                        if (updateOpH != null) {
                            arrayList.add(size, updateOpH);
                        }
                        if (updateOpH2 != null) {
                            arrayList.add(size, updateOpH2);
                        }
                    }
                    updateOpH2 = null;
                    arrayList.set(i14, updateOp);
                    if (updateOp2.d > 0) {
                        arrayList.set(size, updateOp2);
                    } else {
                        arrayList.remove(size);
                        updateOp2.f19140c = null;
                        pools$SimplePool.release(updateOp2);
                    }
                    if (updateOpH != null) {
                        arrayList.add(size, updateOpH);
                    }
                    if (updateOpH2 != null) {
                        arrayList.add(size, updateOpH2);
                    }
                }
                updateOpH = null;
                i3 = updateOp.f19139b;
                i4 = updateOp2.f19139b;
                if (i3 <= i4) {
                    updateOp2.f19139b = i4 + 1;
                } else {
                    i5 = i4 + updateOp2.d;
                    if (i3 < i5) {
                        int i32 = i5 - i3;
                        updateOpH2 = adapterHelper.h(4, i3 + 1, i32, updateOp2.f19140c);
                        updateOp2.d -= i32;
                    }
                    arrayList.set(i14, updateOp);
                    if (updateOp2.d > 0) {
                        arrayList.set(size, updateOp2);
                    } else {
                        arrayList.remove(size);
                        updateOp2.f19140c = null;
                        pools$SimplePool.release(updateOp2);
                    }
                    if (updateOpH != null) {
                        arrayList.add(size, updateOpH);
                    }
                    if (updateOpH2 != null) {
                        arrayList.add(size, updateOpH2);
                    }
                }
                updateOpH2 = null;
                arrayList.set(i14, updateOp);
                if (updateOp2.d > 0) {
                    arrayList.set(size, updateOp2);
                } else {
                    arrayList.remove(size);
                    updateOp2.f19140c = null;
                    pools$SimplePool.release(updateOp2);
                }
                if (updateOpH != null) {
                    arrayList.add(size, updateOpH);
                }
                if (updateOpH2 != null) {
                    arrayList.add(size, updateOpH2);
                }
            }
        }
        int size2 = arrayList.size();
        int i33 = 0;
        while (i33 < size2) {
            UpdateOp updateOpH4 = (UpdateOp) arrayList.get(i33);
            int i34 = updateOpH4.f19138a;
            if (i34 != 1) {
                Pools$SimplePool pools$SimplePool2 = this.f19133a;
                RecyclerView.AnonymousClass7 anonymousClass7 = this.d;
                if (i34 == 2) {
                    int i35 = updateOpH4.f19139b;
                    int i36 = updateOpH4.d + i35;
                    int i37 = i35;
                    int i38 = 0;
                    byte b4 = -1;
                    while (i37 < i36) {
                        if (anonymousClass7.b(i37) != null || a(i37)) {
                            if (b4 == 0) {
                                d(h(2, i35, i38, null));
                                z = true;
                            } else {
                                z = false;
                            }
                            b3 = 1;
                        } else {
                            if (b4 == 1) {
                                i(h(2, i35, i38, null));
                                z = true;
                            } else {
                                z = false;
                            }
                            b3 = 0;
                        }
                        if (z) {
                            i37 -= i38;
                            i36 -= i38;
                            i38 = 1;
                        } else {
                            i38++;
                        }
                        i37++;
                        b4 = b3;
                    }
                    if (i38 != updateOpH4.d) {
                        updateOpH4.f19140c = null;
                        pools$SimplePool2.release(updateOpH4);
                        updateOpH4 = h(2, i35, i38, null);
                    }
                    if (b4 == 0) {
                        d(updateOpH4);
                    } else {
                        i(updateOpH4);
                    }
                } else if (i34 == 4) {
                    int i39 = updateOpH4.f19139b;
                    int i40 = updateOpH4.d + i39;
                    int i41 = i39;
                    int i42 = 0;
                    while (i39 < i40) {
                        if (anonymousClass7.b(i39) != null || a(i39)) {
                            if (b2 == 0) {
                                d(h(4, i41, i42, updateOpH4.f19140c));
                                i41 = i39;
                                i42 = 0;
                            }
                            b2 = 1;
                        } else {
                            if (b2 == 1) {
                                i(h(4, i41, i42, updateOpH4.f19140c));
                                i41 = i39;
                                i42 = 0;
                            }
                            b2 = 0;
                        }
                        i42++;
                        i39++;
                    }
                    if (i42 != updateOpH4.d) {
                        Object obj = updateOpH4.f19140c;
                        updateOpH4.f19140c = null;
                        pools$SimplePool2.release(updateOpH4);
                        updateOpH4 = h(4, i41, i42, obj);
                    }
                    if (b2 == 0) {
                        d(updateOpH4);
                    } else {
                        i(updateOpH4);
                    }
                } else if (i34 == i2) {
                    i(updateOpH4);
                }
            } else {
                i(updateOpH4);
            }
            i33++;
            i2 = 8;
            b2 = -1;
        }
        arrayList.clear();
    }

    public final void k(ArrayList arrayList) {
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            UpdateOp updateOp = (UpdateOp) arrayList.get(i2);
            updateOp.f19140c = null;
            this.f19133a.release(updateOp);
        }
        arrayList.clear();
    }

    public final int l(int i2, int i3) {
        int i4;
        int i5;
        ArrayList arrayList = this.f19135c;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            UpdateOp updateOp = (UpdateOp) arrayList.get(size);
            int i6 = updateOp.f19138a;
            int i7 = updateOp.f19139b;
            if (i6 == 8) {
                int i8 = updateOp.d;
                if (i7 < i8) {
                    i5 = i8;
                    i4 = i7;
                } else {
                    i4 = i8;
                    i5 = i7;
                }
                if (i2 < i4 || i2 > i5) {
                    if (i2 < i7) {
                        if (i3 == 1) {
                            updateOp.f19139b = i7 + 1;
                            updateOp.d = i8 + 1;
                        } else if (i3 == 2) {
                            updateOp.f19139b = i7 - 1;
                            updateOp.d = i8 - 1;
                        }
                    }
                } else if (i4 == i7) {
                    if (i3 == 1) {
                        updateOp.d = i8 + 1;
                    } else if (i3 == 2) {
                        updateOp.d = i8 - 1;
                    }
                    i2++;
                } else {
                    if (i3 == 1) {
                        updateOp.f19139b = i7 + 1;
                    } else if (i3 == 2) {
                        updateOp.f19139b = i7 - 1;
                    }
                    i2--;
                }
            } else if (i7 <= i2) {
                if (i6 == 1) {
                    i2 -= updateOp.d;
                } else if (i6 == 2) {
                    i2 += updateOp.d;
                }
            } else if (i3 == 1) {
                updateOp.f19139b = i7 + 1;
            } else if (i3 == 2) {
                updateOp.f19139b = i7 - 1;
            }
        }
        for (int size2 = arrayList.size() - 1; size2 >= 0; size2--) {
            UpdateOp updateOp2 = (UpdateOp) arrayList.get(size2);
            int i9 = updateOp2.f19138a;
            int i10 = updateOp2.d;
            Pools$SimplePool pools$SimplePool = this.f19133a;
            if (i9 == 8) {
                if (i10 == updateOp2.f19139b || i10 < 0) {
                    arrayList.remove(size2);
                    updateOp2.f19140c = null;
                    pools$SimplePool.release(updateOp2);
                }
            } else if (i10 <= 0) {
                arrayList.remove(size2);
                updateOp2.f19140c = null;
                pools$SimplePool.release(updateOp2);
            }
        }
        return i2;
    }
}
