package androidx.media3.session;

import android.app.PendingIntent;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.media3.common.Player;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.Util;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.UnmodifiableListIterator;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public interface IMediaController extends IInterface {

    public static abstract class Stub extends Binder implements IMediaController {

        public static class Proxy implements IMediaController {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public IBinder f17299a;

            @Override // androidx.media3.session.IMediaController
            public final void A1(int i2, Bundle bundle) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("androidx.media3.session.IMediaController");
                    parcelObtain.writeInt(i2);
                    _Parcel.b(parcelObtain, bundle);
                    this.f17299a.transact(3008, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // androidx.media3.session.IMediaController
            public final void C1(int i2, Bundle bundle, Bundle bundle2) {
                Bundle bundle3 = Bundle.EMPTY;
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("androidx.media3.session.IMediaController");
                    parcelObtain.writeInt(i2);
                    _Parcel.b(parcelObtain, bundle);
                    _Parcel.b(parcelObtain, bundle3);
                    this.f17299a.transact(3005, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // androidx.media3.session.IMediaController
            public final void E(int i2, Bundle bundle) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("androidx.media3.session.IMediaController");
                    parcelObtain.writeInt(i2);
                    _Parcel.b(parcelObtain, bundle);
                    this.f17299a.transact(3001, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // androidx.media3.session.IMediaController
            public final void H1(int i2, Bundle bundle, Bundle bundle2) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("androidx.media3.session.IMediaController");
                    parcelObtain.writeInt(i2);
                    _Parcel.b(parcelObtain, bundle);
                    _Parcel.b(parcelObtain, bundle2);
                    this.f17299a.transact(3013, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // androidx.media3.session.IMediaController
            public final void O0(int i2, Bundle bundle) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("androidx.media3.session.IMediaController");
                    parcelObtain.writeInt(i2);
                    _Parcel.b(parcelObtain, bundle);
                    this.f17299a.transact(3002, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // androidx.media3.session.IMediaController
            public final void a0(int i2, Bundle bundle) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("androidx.media3.session.IMediaController");
                    parcelObtain.writeInt(i2);
                    _Parcel.b(parcelObtain, bundle);
                    this.f17299a.transact(3003, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public final IBinder asBinder() {
                return this.f17299a;
            }

            @Override // androidx.media3.session.IMediaController
            public final void e() {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("androidx.media3.session.IMediaController");
                    parcelObtain.writeInt(0);
                    this.f17299a.transact(3006, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // androidx.media3.session.IMediaController
            public final void f(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("androidx.media3.session.IMediaController");
                    parcelObtain.writeInt(i2);
                    this.f17299a.transact(3011, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // androidx.media3.session.IMediaController
            public final void g(int i2, int i3, int i4) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("androidx.media3.session.IMediaController");
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    parcelObtain.writeInt(i4);
                    this.f17299a.transact(3018, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // androidx.media3.session.IMediaController
            public final void v2(int i2, Bundle bundle, boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("androidx.media3.session.IMediaController");
                    parcelObtain.writeInt(i2);
                    _Parcel.b(parcelObtain, bundle);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.f17299a.transact(3007, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // androidx.media3.session.IMediaController
            public final void w1(int i2, Bundle bundle) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("androidx.media3.session.IMediaController");
                    parcelObtain.writeInt(i2);
                    _Parcel.b(parcelObtain, bundle);
                    this.f17299a.transact(3009, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, "androidx.media3.session.IMediaController");
        }

        public static IMediaController E2(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("androidx.media3.session.IMediaController");
            if (iInterfaceQueryLocalInterface != null && (iInterfaceQueryLocalInterface instanceof IMediaController)) {
                return (IMediaController) iInterfaceQueryLocalInterface;
            }
            Proxy proxy = new Proxy();
            proxy.f17299a = iBinder;
            return proxy;
        }

        @Override // android.os.IInterface
        public final IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public final boolean onTransact(int i2, Parcel parcel, Parcel parcel2, int i3) {
            int i4 = 1;
            if (i2 >= 1 && i2 <= 16777215) {
                parcel.enforceInterface("androidx.media3.session.IMediaController");
            }
            if (i2 == 1598968902) {
                parcel2.writeString("androidx.media3.session.IMediaController");
                return true;
            }
            int i5 = 3;
            if (i2 == 4001) {
                parcel.readInt();
                String string = parcel.readString();
                int i6 = parcel.readInt();
                Bundle bundle = (Bundle) _Parcel.a(parcel, Bundle.CREATOR);
                MediaControllerStub mediaControllerStub = (MediaControllerStub) this;
                if (TextUtils.isEmpty(string)) {
                    Log.g("onChildrenChanged(): Ignoring empty parentId");
                } else if (i6 < 0) {
                    defpackage.a.u(i6, "onChildrenChanged(): Ignoring negative itemCount: ");
                } else {
                    if (bundle != null) {
                        try {
                            MediaLibraryService$LibraryParams.a(bundle);
                        } catch (RuntimeException e2) {
                            Log.h("Ignoring malformed Bundle for LibraryParams", e2);
                        }
                    }
                    mediaControllerStub.F2(new q0(i5));
                }
            } else if (i2 != 4002) {
                int i7 = 0;
                switch (i2) {
                    case 3001:
                        ((MediaControllerStub) this).E(parcel.readInt(), (Bundle) _Parcel.a(parcel, Bundle.CREATOR));
                        return true;
                    case 3002:
                        ((MediaControllerStub) this).O0(parcel.readInt(), (Bundle) _Parcel.a(parcel, Bundle.CREATOR));
                        return true;
                    case 3003:
                        ((MediaControllerStub) this).a0(parcel.readInt(), (Bundle) _Parcel.a(parcel, Bundle.CREATOR));
                        return true;
                    case 3004:
                        int i8 = parcel.readInt();
                        ArrayList arrayListCreateTypedArrayList = parcel.createTypedArrayList(Bundle.CREATOR);
                        MediaControllerStub mediaControllerStub2 = (MediaControllerStub) this;
                        if (arrayListCreateTypedArrayList != null && mediaControllerStub2.f17367b != -1) {
                            try {
                                UnmodifiableListIterator unmodifiableListIterator = ImmutableList.f33587c;
                                ImmutableList.Builder builder = new ImmutableList.Builder();
                                while (i7 < arrayListCreateTypedArrayList.size()) {
                                    Bundle bundle2 = (Bundle) arrayListCreateTypedArrayList.get(i7);
                                    bundle2.getClass();
                                    builder.e(CommandButton.i(mediaControllerStub2.f17367b, bundle2));
                                    i7++;
                                }
                                mediaControllerStub2.F2(new m0(i8, builder.j(), i4));
                            } catch (RuntimeException e3) {
                                Log.h("Ignoring malformed Bundle for CommandButton", e3);
                            }
                        }
                        break;
                    case 3005:
                        int i9 = parcel.readInt();
                        Parcelable.Creator creator = Bundle.CREATOR;
                        ((MediaControllerStub) this).C1(i9, (Bundle) _Parcel.a(parcel, creator), (Bundle) _Parcel.a(parcel, creator));
                        return true;
                    case 3006:
                        parcel.readInt();
                        ((MediaControllerStub) this).e();
                        return true;
                    case 3007:
                        ((MediaControllerStub) this).v2(parcel.readInt(), (Bundle) _Parcel.a(parcel, Bundle.CREATOR), parcel.readInt() != 0);
                        return true;
                    case 3008:
                        ((MediaControllerStub) this).A1(parcel.readInt(), (Bundle) _Parcel.a(parcel, Bundle.CREATOR));
                        return true;
                    case 3009:
                        ((MediaControllerStub) this).w1(parcel.readInt(), (Bundle) _Parcel.a(parcel, Bundle.CREATOR));
                        return true;
                    case 3010:
                        parcel.readInt();
                        Parcelable.Creator creator2 = Bundle.CREATOR;
                        Bundle bundle3 = (Bundle) _Parcel.a(parcel, creator2);
                        Bundle bundle4 = (Bundle) _Parcel.a(parcel, creator2);
                        MediaControllerStub mediaControllerStub3 = (MediaControllerStub) this;
                        if (bundle3 != null && bundle4 != null) {
                            try {
                                try {
                                    mediaControllerStub3.F2(new s(SessionCommands.a(bundle3), Player.Commands.b(bundle4), 6));
                                } catch (RuntimeException e4) {
                                    Log.h("Ignoring malformed Bundle for Commands", e4);
                                }
                            } catch (RuntimeException e5) {
                                Log.h("Ignoring malformed Bundle for SessionCommands", e5);
                            }
                        }
                        break;
                    case 3011:
                        ((MediaControllerStub) this).f(parcel.readInt());
                        return true;
                    case 3012:
                        parcel.readInt();
                        MediaControllerStub mediaControllerStub4 = (MediaControllerStub) this;
                        Bundle bundleP = Util.p((Bundle) _Parcel.a(parcel, Bundle.CREATOR));
                        if (bundleP == null) {
                            Log.g("Ignoring null Bundle for extras");
                            return true;
                        }
                        mediaControllerStub4.F2(new o0(bundleP, i5));
                        return true;
                    case 3013:
                        int i10 = parcel.readInt();
                        Parcelable.Creator creator3 = Bundle.CREATOR;
                        ((MediaControllerStub) this).H1(i10, (Bundle) _Parcel.a(parcel, creator3), (Bundle) _Parcel.a(parcel, creator3));
                        return true;
                    case 3014:
                        ((MediaControllerStub) this).F2(new o0(parcel.readInt(), (PendingIntent) _Parcel.a(parcel, PendingIntent.CREATOR)));
                        return true;
                    case 3015:
                        try {
                            ((MediaControllerStub) this).F2(new q0(parcel.readInt(), SessionError.a((Bundle) _Parcel.a(parcel, Bundle.CREATOR))));
                        } catch (RuntimeException e6) {
                            Log.h("Ignoring malformed Bundle for SessionError", e6);
                        }
                        break;
                    case 3016:
                        int i11 = parcel.readInt();
                        ArrayList arrayListCreateTypedArrayList2 = parcel.createTypedArrayList(Bundle.CREATOR);
                        MediaControllerStub mediaControllerStub5 = (MediaControllerStub) this;
                        if (arrayListCreateTypedArrayList2 != null && mediaControllerStub5.f17367b != -1) {
                            try {
                                UnmodifiableListIterator unmodifiableListIterator2 = ImmutableList.f33587c;
                                ImmutableList.Builder builder2 = new ImmutableList.Builder();
                                for (int i12 = 0; i12 < arrayListCreateTypedArrayList2.size(); i12++) {
                                    Bundle bundle5 = (Bundle) arrayListCreateTypedArrayList2.get(i12);
                                    bundle5.getClass();
                                    builder2.e(CommandButton.i(mediaControllerStub5.f17367b, bundle5));
                                }
                                mediaControllerStub5.F2(new m0(i11, builder2.j(), i7));
                            } catch (RuntimeException e7) {
                                Log.h("Ignoring malformed Bundle for CommandButton", e7);
                            }
                        }
                        break;
                    case 3017:
                        int i13 = parcel.readInt();
                        Parcelable.Creator creator4 = Bundle.CREATOR;
                        Bundle bundle6 = (Bundle) _Parcel.a(parcel, creator4);
                        Bundle bundle7 = (Bundle) _Parcel.a(parcel, creator4);
                        Bundle bundle8 = (Bundle) _Parcel.a(parcel, creator4);
                        MediaControllerStub mediaControllerStub6 = (MediaControllerStub) this;
                        if (bundle6 == null || bundle7 == null) {
                            Log.g("Ignoring custom command progress update with null args.");
                        } else {
                            try {
                                mediaControllerStub6.F2(new n0(i13, SessionCommand.a(bundle6), bundle7, bundle8));
                            } catch (RuntimeException e8) {
                                Log.h("Ignoring malformed Bundle for SessionCommand", e8);
                            }
                        }
                        break;
                    case 3018:
                        ((MediaControllerStub) this).g(parcel.readInt(), parcel.readInt(), parcel.readInt());
                        return true;
                    default:
                        return super.onTransact(i2, parcel, parcel2, i3);
                }
            } else {
                parcel.readInt();
                String string2 = parcel.readString();
                int i14 = parcel.readInt();
                Bundle bundle9 = (Bundle) _Parcel.a(parcel, Bundle.CREATOR);
                MediaControllerStub mediaControllerStub7 = (MediaControllerStub) this;
                if (TextUtils.isEmpty(string2)) {
                    Log.g("onSearchResultChanged(): Ignoring empty query");
                } else if (i14 < 0) {
                    defpackage.a.u(i14, "onSearchResultChanged(): Ignoring negative itemCount: ");
                } else {
                    if (bundle9 != null) {
                        try {
                            MediaLibraryService$LibraryParams.a(bundle9);
                        } catch (RuntimeException e9) {
                            Log.h("Ignoring malformed Bundle for LibraryParams", e9);
                        }
                    }
                    mediaControllerStub7.F2(new q0(i5));
                }
            }
            return true;
        }
    }

    public static class _Parcel {
        public static Object a(Parcel parcel, Parcelable.Creator creator) {
            if (parcel.readInt() != 0) {
                return creator.createFromParcel(parcel);
            }
            return null;
        }

        public static void b(Parcel parcel, Parcelable parcelable) {
            if (parcelable == null) {
                parcel.writeInt(0);
            } else {
                parcel.writeInt(1);
                parcelable.writeToParcel(parcel, 0);
            }
        }
    }

    void A1(int i2, Bundle bundle);

    void C1(int i2, Bundle bundle, Bundle bundle2);

    void E(int i2, Bundle bundle);

    void H1(int i2, Bundle bundle, Bundle bundle2);

    void O0(int i2, Bundle bundle);

    void a0(int i2, Bundle bundle);

    void e();

    void f(int i2);

    void g(int i2, int i3, int i4);

    void v2(int i2, Bundle bundle, boolean z);

    void w1(int i2, Bundle bundle);
}
