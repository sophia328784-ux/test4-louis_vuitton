package kotlin.text;

import com.networkbench.agent.impl.harvest.ConfigurationName;
import defpackage.b21;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.markers.KMappedMarker;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt;
import kotlin.sequences.Sequence;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\r\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B[\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u0012:\u0010\u000e\u001a6\u0012\u0004\u0012\u00020\u0003\u0012\u0013\u0012\u00110\u0005¢\u0006\f\b\t\u0012\b\b\n\u0012\u0004\b\b(\u000b\u0012\u0012\u0012\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0005\u0018\u00010\f0\b¢\u0006\u0002\b\r¢\u0006\u0004\b\u000f\u0010\u0010¨\u0006\u0011"}, d2 = {"Lkotlin/text/DelimitedRangesSequence;", "Lkotlin/sequences/Sequence;", "Lkotlin/ranges/IntRange;", "", "input", "", "startIndex", ConfigurationName.CELLINFO_LIMIT, "Lkotlin/Function2;", "Lkotlin/ParameterName;", "name", "currentIndex", "Lkotlin/Pair;", "Lkotlin/ExtensionFunctionType;", "getNextMatch", "<init>", "(Ljava/lang/CharSequence;IILkotlin/jvm/functions/Function2;)V", "kotlin-stdlib"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class DelimitedRangesSequence implements Sequence<IntRange> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CharSequence f74515a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f74516b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f74517c;
    public final Function2 d;

    /* JADX INFO: renamed from: kotlin.text.DelimitedRangesSequence$iterator$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010(\n\u0002\u0018\u0002\n\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001¨\u0006\u0003"}, d2 = {"kotlin/text/DelimitedRangesSequence$iterator$1", "", "Lkotlin/ranges/IntRange;", "kotlin-stdlib"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public final class AnonymousClass1 implements Iterator<IntRange>, KMappedMarker {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f74518b = -1;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f74519c;
        public int d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public IntRange f74520e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f74521f;

        public AnonymousClass1() {
            int iD = RangesKt.d(DelimitedRangesSequence.this.f74516b, 0, DelimitedRangesSequence.this.f74515a.length());
            this.f74519c = iD;
            this.d = iD;
        }

        /* JADX WARN: Code duplicated, block: B:10:0x001c  */
        /* JADX WARN: Code duplicated, block: B:12:0x0022 A[ADDED_TO_REGION, REMOVE] */
        /* JADX WARN: Code duplicated, block: B:18:0x006f  */
        public final void a() {
            Pair pair;
            DelimitedRangesSequence delimitedRangesSequence = DelimitedRangesSequence.this;
            CharSequence charSequence = delimitedRangesSequence.f74515a;
            int i2 = this.d;
            if (i2 < 0) {
                this.f74518b = 0;
                this.f74520e = null;
                return;
            }
            int i3 = delimitedRangesSequence.f74517c;
            if (i3 > 0) {
                int i4 = this.f74521f + 1;
                this.f74521f = i4;
                if (i4 >= i3) {
                    this.f74520e = new IntRange(this.f74519c, StringsKt.t(charSequence));
                    this.d = -1;
                } else if (i2 > charSequence.length() && (pair = (Pair) delimitedRangesSequence.d.invoke(charSequence, Integer.valueOf(this.d))) != null) {
                    int iIntValue = ((Number) pair.f71705b).intValue();
                    int iIntValue2 = ((Number) pair.f71706c).intValue();
                    this.f74520e = RangesKt.j(this.f74519c, iIntValue);
                    int i5 = iIntValue + iIntValue2;
                    this.f74519c = i5;
                    this.d = i5 + (iIntValue2 == 0 ? 1 : 0);
                } else {
                    this.f74520e = new IntRange(this.f74519c, StringsKt.t(charSequence));
                    this.d = -1;
                }
            } else if (i2 > charSequence.length()) {
                this.f74520e = new IntRange(this.f74519c, StringsKt.t(charSequence));
                this.d = -1;
            } else {
                int iIntValue3 = ((Number) pair.f71705b).intValue();
                int iIntValue4 = ((Number) pair.f71706c).intValue();
                this.f74520e = RangesKt.j(this.f74519c, iIntValue3);
                int i6 = iIntValue3 + iIntValue4;
                this.f74519c = i6;
                this.d = i6 + (iIntValue4 == 0 ? 1 : 0);
            }
            this.f74518b = 1;
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            if (this.f74518b == -1) {
                a();
            }
            return this.f74518b == 1;
        }

        @Override // java.util.Iterator
        public final IntRange next() {
            if (this.f74518b == -1) {
                a();
            }
            if (this.f74518b == 0) {
                b21.x();
                return null;
            }
            IntRange intRange = this.f74520e;
            intRange.getClass();
            this.f74520e = null;
            this.f74518b = -1;
            return intRange;
        }

        @Override // java.util.Iterator
        public final void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    public DelimitedRangesSequence(CharSequence charSequence, int i2, int i3, Function2<? super CharSequence, ? super Integer, Pair<Integer, Integer>> function2) {
        charSequence.getClass();
        function2.getClass();
        this.f74515a = charSequence;
        this.f74516b = i2;
        this.f74517c = i3;
        this.d = function2;
    }

    @Override // kotlin.sequences.Sequence
    /* JADX INFO: renamed from: iterator */
    public final Iterator getF74480a() {
        return new AnonymousClass1();
    }
}
