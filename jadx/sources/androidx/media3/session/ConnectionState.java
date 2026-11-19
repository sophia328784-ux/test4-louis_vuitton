package androidx.media3.session;

import android.app.PendingIntent;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcelable;
import androidx.media3.common.Player;
import androidx.media3.common.util.Util;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.UnmodifiableIterator;
import com.google.common.collect.UnmodifiableListIterator;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
class ConnectionState {
    public static final String A;
    public static final String B;
    public static final String C;
    public static final String o;
    public static final String p;
    public static final String q;
    public static final String r;
    public static final String s;
    public static final String t;
    public static final String u;
    public static final String v;
    public static final String w;
    public static final String x;
    public static final String y;
    public static final String z;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f17271a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f17272b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final IMediaSession f17273c;
    public final PendingIntent d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final SessionCommands f17274e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Player.Commands f17275f;
    public final Player.Commands g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Bundle f17276h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Bundle f17277i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final PlayerInfo f17278j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final ImmutableList f17279k;
    public final ImmutableList l;
    public final android.media.session.MediaSession.Token m;
    public final ImmutableList n;

    public final class InProcessBinder extends Binder {
        public InProcessBinder() {
        }
    }

    static {
        String str = Util.f14242a;
        o = Integer.toString(0, 36);
        p = Integer.toString(1, 36);
        q = Integer.toString(2, 36);
        r = Integer.toString(9, 36);
        s = Integer.toString(14, 36);
        t = Integer.toString(13, 36);
        u = Integer.toString(3, 36);
        v = Integer.toString(4, 36);
        w = Integer.toString(5, 36);
        x = Integer.toString(6, 36);
        y = Integer.toString(11, 36);
        z = Integer.toString(7, 36);
        A = Integer.toString(8, 36);
        B = Integer.toString(10, 36);
        C = Integer.toString(12, 36);
    }

    public ConnectionState(int i2, int i3, IMediaSession iMediaSession, PendingIntent pendingIntent, ImmutableList<CommandButton> immutableList, ImmutableList<CommandButton> immutableList2, ImmutableList<CommandButton> immutableList3, SessionCommands sessionCommands, Player.Commands commands, Player.Commands commands2, Bundle bundle, Bundle bundle2, PlayerInfo playerInfo, android.media.session.MediaSession.Token token) {
        this.f17271a = i2;
        this.f17272b = i3;
        this.f17273c = iMediaSession;
        this.d = pendingIntent;
        this.f17279k = immutableList;
        this.l = immutableList2;
        this.n = immutableList3;
        this.f17274e = sessionCommands;
        this.f17275f = commands;
        this.g = commands2;
        this.f17276h = bundle;
        this.f17277i = bundle2;
        this.f17278j = playerInfo;
        this.m = token;
    }

    public static ConnectionState a(Bundle bundle) {
        ImmutableList immutableListX;
        ImmutableList immutableListX2;
        ImmutableList immutableListX3;
        IMediaSession iMediaSession;
        IMediaSession iMediaSession2;
        IBinder binder = bundle.getBinder(B);
        if (binder instanceof InProcessBinder) {
            return ConnectionState.this;
        }
        int i2 = bundle.getInt(o, 0);
        int i3 = bundle.getInt(A, 0);
        IBinder binder2 = bundle.getBinder(p);
        binder2.getClass();
        IBinder iBinder = binder2;
        PendingIntent pendingIntent = (PendingIntent) bundle.getParcelable(q);
        ArrayList parcelableArrayList = bundle.getParcelableArrayList(r);
        if (parcelableArrayList != null) {
            UnmodifiableListIterator unmodifiableListIterator = ImmutableList.f33587c;
            ImmutableList.Builder builder = new ImmutableList.Builder();
            for (int i4 = 0; i4 < parcelableArrayList.size(); i4++) {
                Bundle bundle2 = (Bundle) parcelableArrayList.get(i4);
                bundle2.getClass();
                builder.e(CommandButton.i(i3, bundle2));
            }
            immutableListX = builder.j();
        } else {
            immutableListX = ImmutableList.x();
        }
        ImmutableList immutableList = immutableListX;
        ArrayList parcelableArrayList2 = bundle.getParcelableArrayList(s);
        if (parcelableArrayList2 != null) {
            UnmodifiableListIterator unmodifiableListIterator2 = ImmutableList.f33587c;
            ImmutableList.Builder builder2 = new ImmutableList.Builder();
            for (int i5 = 0; i5 < parcelableArrayList2.size(); i5++) {
                Bundle bundle3 = (Bundle) parcelableArrayList2.get(i5);
                bundle3.getClass();
                builder2.e(CommandButton.i(i3, bundle3));
            }
            immutableListX2 = builder2.j();
        } else {
            immutableListX2 = ImmutableList.x();
        }
        ImmutableList immutableList2 = immutableListX2;
        ArrayList parcelableArrayList3 = bundle.getParcelableArrayList(t);
        if (parcelableArrayList3 != null) {
            UnmodifiableListIterator unmodifiableListIterator3 = ImmutableList.f33587c;
            ImmutableList.Builder builder3 = new ImmutableList.Builder();
            for (int i6 = 0; i6 < parcelableArrayList3.size(); i6++) {
                Bundle bundle4 = (Bundle) parcelableArrayList3.get(i6);
                bundle4.getClass();
                builder3.e(CommandButton.i(i3, bundle4));
            }
            immutableListX3 = builder3.j();
        } else {
            immutableListX3 = ImmutableList.x();
        }
        ImmutableList immutableList3 = immutableListX3;
        Bundle bundle5 = bundle.getBundle(u);
        SessionCommands sessionCommandsA = bundle5 == null ? SessionCommands.f17542b : SessionCommands.a(bundle5);
        Bundle bundle6 = bundle.getBundle(w);
        Player.Commands commandsB = bundle6 == null ? Player.Commands.f13922b : Player.Commands.b(bundle6);
        Bundle bundle7 = bundle.getBundle(v);
        Player.Commands commandsB2 = bundle7 == null ? Player.Commands.f13922b : Player.Commands.b(bundle7);
        Bundle bundleP = Util.p(bundle.getBundle(x));
        Bundle bundleP2 = Util.p(bundle.getBundle(y));
        Bundle bundle8 = bundle.getBundle(z);
        PlayerInfo playerInfoH = bundle8 == null ? PlayerInfo.H : PlayerInfo.h(i3, bundle8);
        android.media.session.MediaSession.Token token = (android.media.session.MediaSession.Token) bundle.getParcelable(C);
        Bundle bundle9 = bundleP2;
        int i7 = IMediaSession.Stub.f17300a;
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("androidx.media3.session.IMediaSession");
        if (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IMediaSession)) {
            IMediaSession.Stub.Proxy proxy = new IMediaSession.Stub.Proxy();
            proxy.f17301a = iBinder;
            iMediaSession = proxy;
        } else {
            iMediaSession2 = (IMediaSession) iInterfaceQueryLocalInterface;
        }
        if (bundleP == null) {
            iMediaSession = iMediaSession2;
            bundleP = Bundle.EMPTY;
        }
        iMediaSession = iMediaSession2;
        Bundle bundle10 = bundleP;
        if (bundle9 == null) {
            bundle9 = Bundle.EMPTY;
        }
        return new ConnectionState(i2, i3, iMediaSession, pendingIntent, immutableList, immutableList2, immutableList3, sessionCommandsA, commandsB2, commandsB, bundle10, bundle9, playerInfoH, token);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final Bundle b(int i2) {
        Bundle bundle = new Bundle();
        bundle.putInt(o, this.f17271a);
        bundle.putBinder(p, this.f17273c.asBinder());
        bundle.putParcelable(q, this.d);
        ImmutableList immutableList = this.f17279k;
        boolean zIsEmpty = immutableList.isEmpty();
        String str = r;
        if (!zIsEmpty) {
            ArrayList<? extends Parcelable> arrayList = new ArrayList<>(immutableList.size());
            Iterator<E> it = immutableList.iterator();
            while (it.hasNext()) {
                arrayList.add(((CommandButton) it.next()).o(i2));
            }
            bundle.putParcelableArrayList(str, arrayList);
        }
        ImmutableList immutableList2 = this.l;
        if (!immutableList2.isEmpty()) {
            if (i2 >= 7) {
                ArrayList<? extends Parcelable> arrayList2 = new ArrayList<>(immutableList2.size());
                Iterator<E> it2 = immutableList2.iterator();
                while (it2.hasNext()) {
                    arrayList2.add(((CommandButton) it2.next()).o(i2));
                }
                bundle.putParcelableArrayList(s, arrayList2);
            } else {
                ImmutableList immutableListJ = CommandButton.j(immutableList2, true, true, 9);
                ArrayList<? extends Parcelable> arrayList3 = new ArrayList<>(immutableListJ.size());
                Iterator<E> it3 = immutableListJ.iterator();
                while (it3.hasNext()) {
                    arrayList3.add(((CommandButton) it3.next()).o(i2));
                }
                bundle.putParcelableArrayList(str, arrayList3);
            }
        }
        ImmutableList immutableList3 = this.n;
        if (!immutableList3.isEmpty()) {
            ArrayList<? extends Parcelable> arrayList4 = new ArrayList<>(immutableList3.size());
            Iterator<E> it4 = immutableList3.iterator();
            while (it4.hasNext()) {
                arrayList4.add(((CommandButton) it4.next()).o(i2));
            }
            bundle.putParcelableArrayList(t, arrayList4);
        }
        SessionCommands sessionCommands = this.f17274e;
        sessionCommands.getClass();
        Bundle bundle2 = new Bundle();
        ArrayList<? extends Parcelable> arrayList5 = new ArrayList<>();
        UnmodifiableIterator it5 = sessionCommands.f17544a.iterator();
        while (it5.hasNext()) {
            arrayList5.add(((SessionCommand) it5.next()).b());
        }
        bundle2.putParcelableArrayList(SessionCommands.f17543c, arrayList5);
        bundle.putBundle(u, bundle2);
        String str2 = v;
        Player.Commands commands = this.f17275f;
        bundle.putBundle(str2, commands.c());
        String str3 = w;
        Player.Commands commands2 = this.g;
        bundle.putBundle(str3, commands2.c());
        bundle.putBundle(x, this.f17276h);
        bundle.putBundle(y, this.f17277i);
        bundle.putBundle(z, this.f17278j.g(MediaUtils.d(commands, commands2), false, false).j(i2));
        bundle.putInt(A, this.f17272b);
        android.media.session.MediaSession.Token token = this.m;
        if (token != null) {
            bundle.putParcelable(C, token);
        }
        return bundle;
    }
}
