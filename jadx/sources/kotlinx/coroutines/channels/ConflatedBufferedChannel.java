package kotlinx.coroutines.channels;

import defpackage.b21;
import defpackage.lc0;
import defpackage.md;
import defpackage.n00;
import kotlin.ExceptionsKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Reflection;
import kotlinx.coroutines.Waiter;
import kotlinx.coroutines.internal.OnUndeliveredElementKt;
import kotlinx.coroutines.internal.UndeliveredElementException;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0010\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002B;\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\"\b\u0002\u0010\n\u001a\u001c\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007j\n\u0012\u0004\u0012\u00028\u0000\u0018\u0001`\t¢\u0006\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Lkotlinx/coroutines/channels/ConflatedBufferedChannel;", "E", "Lkotlinx/coroutines/channels/BufferedChannel;", "", "capacity", "Lkotlinx/coroutines/channels/BufferOverflow;", "onBufferOverflow", "Lkotlin/Function1;", "", "Lkotlinx/coroutines/internal/OnUndeliveredElement;", "onUndeliveredElement", "<init>", "(ILkotlinx/coroutines/channels/BufferOverflow;Lkotlin/jvm/functions/Function1;)V", "kotlinx-coroutines-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
public class ConflatedBufferedChannel<E> extends BufferedChannel<E> {
    public final BufferOverflow s;

    public ConflatedBufferedChannel(int i2, BufferOverflow bufferOverflow, Function1<? super E, Unit> function1) {
        super(i2, function1);
        this.s = bufferOverflow;
        if (bufferOverflow == BufferOverflow.SUSPEND) {
            lc0.v("This implementation does not support suspension for senders, use ", Reflection.f71922a.b(BufferedChannel.class).B(), " instead");
            throw null;
        }
        if (i2 >= 1) {
            return;
        }
        b21.n(n00.m(i2, "Buffered channel capacity must be at least 1, but ", " was specified"));
        throw null;
    }

    @Override // kotlinx.coroutines.channels.BufferedChannel
    public final boolean H() {
        return this.s == BufferOverflow.DROP_OLDEST;
    }

    public final Object W(Object obj, boolean z) {
        Function1 function1;
        UndeliveredElementException undeliveredElementExceptionB;
        if (this.s == BufferOverflow.DROP_LATEST) {
            Object objB = super.b(obj);
            ChannelResult.Companion companion = ChannelResult.f74759b;
            if (!(objB instanceof ChannelResult.Failed) || (objB instanceof ChannelResult.Closed)) {
                return objB;
            }
            if (z && (function1 = this.f74735c) != null && (undeliveredElementExceptionB = OnUndeliveredElementKt.b(function1, obj, null)) != null) {
                throw undeliveredElementExceptionB;
            }
            ChannelResult.Companion companion2 = ChannelResult.f74759b;
            Unit unit = Unit.f71739a;
            companion2.getClass();
            return unit;
        }
        Object obj2 = obj;
        Object obj3 = BufferedChannelKt.d;
        ChannelSegment channelSegment = (ChannelSegment) BufferedChannel.f74731i.get(this);
        while (true) {
            long andIncrement = BufferedChannel.f74728e.getAndIncrement(this);
            long j2 = 1152921504606846975L & andIncrement;
            boolean zF = F(andIncrement, false);
            int i2 = BufferedChannelKt.f74747b;
            long j3 = i2;
            long j4 = j2 / j3;
            int i3 = (int) (j2 % j3);
            if (channelSegment.f75137f != j4) {
                ChannelSegment channelSegmentX = x(j4, channelSegment);
                if (channelSegmentX != null) {
                    channelSegment = channelSegmentX;
                } else if (zF) {
                    break;
                }
            }
            int iE = BufferedChannel.e(this, channelSegment, i3, obj2, j2, obj3, zF);
            if (iE == 0) {
                channelSegment.b();
                ChannelResult.Companion companion3 = ChannelResult.f74759b;
                Unit unit2 = Unit.f71739a;
                companion3.getClass();
                return unit2;
            }
            if (iE == 1) {
                ChannelResult.Companion companion4 = ChannelResult.f74759b;
                Unit unit3 = Unit.f71739a;
                companion4.getClass();
                return unit3;
            }
            if (iE == 2) {
                if (zF) {
                    channelSegment.n();
                    break;
                }
                Waiter waiter = obj3 instanceof Waiter ? (Waiter) obj3 : null;
                if (waiter != null) {
                    waiter.invokeOnCancellation(channelSegment, i3 + i2);
                }
                p((channelSegment.f75137f * j3) + ((long) i3));
                ChannelResult.Companion companion5 = ChannelResult.f74759b;
                Unit unit4 = Unit.f71739a;
                companion5.getClass();
                return unit4;
            }
            if (iE == 3) {
                md.k("unexpected");
                return null;
            }
            if (iE == 4) {
                if (j2 >= BufferedChannel.f74729f.get(this)) {
                    break;
                }
                channelSegment.b();
                break;
            }
            if (iE == 5) {
                channelSegment.b();
            }
            obj2 = obj;
        }
        ChannelResult.Companion companion6 = ChannelResult.f74759b;
        Throwable thA = A();
        companion6.getClass();
        return ChannelResult.Companion.a(thA);
    }

    @Override // kotlinx.coroutines.channels.BufferedChannel, kotlinx.coroutines.channels.SendChannel
    public final Object b(Object obj) {
        return W(obj, false);
    }

    @Override // kotlinx.coroutines.channels.BufferedChannel, kotlinx.coroutines.channels.SendChannel
    public final Object u(Object obj, Continuation continuation) throws Throwable {
        UndeliveredElementException undeliveredElementExceptionB;
        if (!(W(obj, true) instanceof ChannelResult.Closed)) {
            return Unit.f71739a;
        }
        ChannelResult.Companion companion = ChannelResult.f74759b;
        Function1 function1 = this.f74735c;
        if (function1 == null || (undeliveredElementExceptionB = OnUndeliveredElementKt.b(function1, obj, null)) == null) {
            throw A();
        }
        ExceptionsKt.a(undeliveredElementExceptionB, A());
        throw undeliveredElementExceptionB;
    }

    public /* synthetic */ ConflatedBufferedChannel(int i2, BufferOverflow bufferOverflow, Function1 function1, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this(i2, bufferOverflow, (i3 & 4) != 0 ? null : function1);
    }
}
