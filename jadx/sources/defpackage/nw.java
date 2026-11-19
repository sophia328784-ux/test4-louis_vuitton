package defpackage;

import android.net.Uri;
import android.os.Bundle;
import androidx.media3.common.AdPlaybackState;
import androidx.media3.common.MediaItem;
import androidx.media3.common.Timeline;
import com.google.common.base.Function;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class nw implements Function {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f76622b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f76623c;

    public /* synthetic */ nw(int i2, int i3) {
        this.f76622b = i3;
        this.f76623c = i2;
    }

    /* JADX WARN: Code duplicated, block: B:39:0x0106  */
    /* JADX WARN: Code duplicated, block: B:40:0x010b  */
    /* JADX WARN: Code duplicated, block: B:44:0x0114  */
    /* JADX WARN: Code duplicated, block: B:46:0x011d  */
    /* JADX WARN: Code duplicated, block: B:48:0x0122  */
    /* JADX WARN: Code duplicated, block: B:51:0x012f  */
    /* JADX WARN: Code duplicated, block: B:53:0x0137  */
    /* JADX WARN: Code duplicated, block: B:54:0x013a  */
    @Override // com.google.common.base.Function
    public final Object apply(Object obj) {
        AdPlaybackState adPlaybackState;
        AdPlaybackState.AdGroup[] adGroupArr;
        int i2;
        MediaItem[] mediaItemArr;
        MediaItem mediaItemA;
        long[] jArr;
        String[] strArr;
        AdPlaybackState.SkipInfo[] skipInfoArr;
        int i3;
        Bundle bundle;
        AdPlaybackState.SkipInfo skipInfo;
        int i4 = this.f76622b;
        int i5 = this.f76623c;
        switch (i4) {
            case 0:
                return Integer.valueOf(i5);
            case 1:
                Bundle bundle2 = (Bundle) obj;
                Timeline timeline = Timeline.f13952a;
                Bundle bundle3 = bundle2.getBundle(Timeline.Window.t);
                MediaItem mediaItemB = bundle3 != null ? MediaItem.b(i5, bundle3) : MediaItem.g;
                long j2 = bundle2.getLong(Timeline.Window.u, -9223372036854775807L);
                long j3 = bundle2.getLong(Timeline.Window.v, -9223372036854775807L);
                long j4 = bundle2.getLong(Timeline.Window.w, -9223372036854775807L);
                boolean z = bundle2.getBoolean(Timeline.Window.x, false);
                boolean z2 = bundle2.getBoolean(Timeline.Window.y, false);
                Bundle bundle4 = bundle2.getBundle(Timeline.Window.z);
                MediaItem.LiveConfiguration liveConfigurationB = bundle4 != null ? MediaItem.LiveConfiguration.b(bundle4) : null;
                boolean z3 = bundle2.getBoolean(Timeline.Window.A, false);
                long j5 = bundle2.getLong(Timeline.Window.B, 0L);
                long j6 = bundle2.getLong(Timeline.Window.C, -9223372036854775807L);
                int i6 = bundle2.getInt(Timeline.Window.D, 0);
                int i7 = bundle2.getInt(Timeline.Window.E, 0);
                long j7 = bundle2.getLong(Timeline.Window.F, 0L);
                Timeline.Window window = new Timeline.Window();
                window.b(Timeline.Window.r, mediaItemB, null, j2, j3, j4, z, z2, liveConfigurationB, j5, j6, i6, i7, j7);
                window.f13975k = z3;
                return window;
            default:
                Bundle bundle5 = (Bundle) obj;
                Timeline timeline2 = Timeline.f13952a;
                int i8 = bundle5.getInt(Timeline.Period.f13955h, 0);
                long j8 = bundle5.getLong(Timeline.Period.f13956i, -9223372036854775807L);
                long j9 = bundle5.getLong(Timeline.Period.f13957j, 0L);
                boolean z4 = bundle5.getBoolean(Timeline.Period.f13958k, false);
                Bundle bundle6 = bundle5.getBundle(Timeline.Period.l);
                if (bundle6 != null) {
                    ArrayList parcelableArrayList = bundle6.getParcelableArrayList(AdPlaybackState.f13667i);
                    if (parcelableArrayList == null) {
                        adGroupArr = new AdPlaybackState.AdGroup[0];
                    } else {
                        AdPlaybackState.AdGroup[] adGroupArr2 = new AdPlaybackState.AdGroup[parcelableArrayList.size()];
                        for (int i9 = 0; i9 < parcelableArrayList.size(); i9++) {
                            Bundle bundle7 = (Bundle) parcelableArrayList.get(i9);
                            long j10 = bundle7.getLong(AdPlaybackState.AdGroup.m);
                            int i10 = bundle7.getInt(AdPlaybackState.AdGroup.n);
                            int i11 = bundle7.getInt(AdPlaybackState.AdGroup.t);
                            ArrayList parcelableArrayList2 = bundle7.getParcelableArrayList(AdPlaybackState.AdGroup.o);
                            ArrayList parcelableArrayList3 = bundle7.getParcelableArrayList(AdPlaybackState.AdGroup.u);
                            int[] intArray = bundle7.getIntArray(AdPlaybackState.AdGroup.p);
                            long[] longArray = bundle7.getLongArray(AdPlaybackState.AdGroup.q);
                            long j11 = bundle7.getLong(AdPlaybackState.AdGroup.r);
                            boolean z5 = bundle7.getBoolean(AdPlaybackState.AdGroup.s);
                            ArrayList<String> stringArrayList = bundle7.getStringArrayList(AdPlaybackState.AdGroup.v);
                            ArrayList parcelableArrayList4 = bundle7.getParcelableArrayList(AdPlaybackState.AdGroup.x);
                            boolean z6 = bundle7.getBoolean(AdPlaybackState.AdGroup.w);
                            if (intArray == null) {
                                intArray = new int[0];
                            }
                            int[] iArr = intArray;
                            if (parcelableArrayList3 != null) {
                                MediaItem[] mediaItemArr2 = new MediaItem[parcelableArrayList3.size()];
                                for (int i12 = 0; i12 < parcelableArrayList3.size(); i12++) {
                                    Bundle bundle8 = (Bundle) parcelableArrayList3.get(i12);
                                    mediaItemArr2[i12] = bundle8 == null ? null : MediaItem.b(i5, bundle8);
                                }
                                mediaItemArr = mediaItemArr2;
                            } else {
                                if (parcelableArrayList2 != null) {
                                    MediaItem[] mediaItemArr3 = new MediaItem[parcelableArrayList2.size()];
                                    for (int i13 = 0; i13 < parcelableArrayList2.size(); i13++) {
                                        Uri uri = (Uri) parcelableArrayList2.get(i13);
                                        if (uri == null) {
                                            mediaItemA = null;
                                        } else {
                                            MediaItem mediaItem = MediaItem.g;
                                            MediaItem.Builder builder = new MediaItem.Builder();
                                            builder.f13796b = uri;
                                            mediaItemA = builder.a();
                                        }
                                        mediaItemArr3[i13] = mediaItemA;
                                    }
                                    mediaItemArr = mediaItemArr3;
                                } else {
                                    i2 = 0;
                                    mediaItemArr = new MediaItem[0];
                                }
                                if (longArray == null) {
                                    jArr = new long[i2];
                                } else {
                                    jArr = longArray;
                                }
                                strArr = new String[i2];
                                if (stringArrayList != null) {
                                    strArr = (String[]) stringArrayList.toArray(strArr);
                                }
                                String[] strArr2 = strArr;
                                if (parcelableArrayList4 == null) {
                                    skipInfoArr = new AdPlaybackState.SkipInfo[i2];
                                } else {
                                    skipInfoArr = new AdPlaybackState.SkipInfo[parcelableArrayList4.size()];
                                    for (i3 = 0; i3 < parcelableArrayList4.size(); i3++) {
                                        bundle = (Bundle) parcelableArrayList4.get(i3);
                                        if (bundle == null) {
                                            skipInfo = null;
                                        } else {
                                            skipInfo = new AdPlaybackState.SkipInfo(bundle.getLong(AdPlaybackState.SkipInfo.d), bundle.getLong(AdPlaybackState.SkipInfo.f13684e), bundle.getString(AdPlaybackState.SkipInfo.f13685f));
                                        }
                                        skipInfoArr[i3] = skipInfo;
                                    }
                                }
                                adGroupArr2[i9] = new AdPlaybackState.AdGroup(j10, i10, i11, iArr, mediaItemArr, jArr, j11, z5, strArr2, skipInfoArr, z6);
                            }
                            i2 = 0;
                            if (longArray == null) {
                                jArr = new long[i2];
                            } else {
                                jArr = longArray;
                            }
                            strArr = new String[i2];
                            if (stringArrayList != null) {
                                strArr = (String[]) stringArrayList.toArray(strArr);
                            }
                            String[] strArr3 = strArr;
                            if (parcelableArrayList4 == null) {
                                skipInfoArr = new AdPlaybackState.SkipInfo[i2];
                            } else {
                                skipInfoArr = new AdPlaybackState.SkipInfo[parcelableArrayList4.size()];
                                while (i3 < parcelableArrayList4.size()) {
                                    bundle = (Bundle) parcelableArrayList4.get(i3);
                                    if (bundle == null) {
                                        skipInfo = null;
                                    } else {
                                        skipInfo = new AdPlaybackState.SkipInfo(bundle.getLong(AdPlaybackState.SkipInfo.d), bundle.getLong(AdPlaybackState.SkipInfo.f13684e), bundle.getString(AdPlaybackState.SkipInfo.f13685f));
                                    }
                                    skipInfoArr[i3] = skipInfo;
                                }
                            }
                            adGroupArr2[i9] = new AdPlaybackState.AdGroup(j10, i10, i11, iArr, mediaItemArr, jArr, j11, z5, strArr3, skipInfoArr, z6);
                        }
                        adGroupArr = adGroupArr2;
                    }
                    adPlaybackState = new AdPlaybackState(null, adGroupArr, bundle6.getLong(AdPlaybackState.f13668j, 0L), bundle6.getLong(AdPlaybackState.f13669k, -9223372036854775807L), bundle6.getInt(AdPlaybackState.l, 0));
                } else {
                    adPlaybackState = AdPlaybackState.g;
                }
                AdPlaybackState adPlaybackState2 = adPlaybackState;
                Timeline.Period period = new Timeline.Period();
                period.i(null, null, i8, j8, j9, adPlaybackState2, z4);
                return period;
        }
    }
}
