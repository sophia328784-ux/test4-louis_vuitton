package androidx.media3.exoplayer.source;

import android.content.Context;
import androidx.media3.common.Format;
import androidx.media3.common.MediaItem;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.Util;
import androidx.media3.datasource.DataSource;
import androidx.media3.datasource.DefaultDataSource;
import androidx.media3.exoplayer.hls.HlsMediaSource;
import androidx.media3.exoplayer.source.DefaultMediaSourceFactory;
import androidx.media3.exoplayer.source.ads.AdsLoader;
import androidx.media3.extractor.DefaultExtractorsFactory;
import androidx.media3.extractor.Extractor;
import androidx.media3.extractor.ExtractorInput;
import androidx.media3.extractor.ExtractorOutput;
import androidx.media3.extractor.ExtractorsFactory;
import androidx.media3.extractor.PositionHolder;
import androidx.media3.extractor.SeekMap;
import androidx.media3.extractor.TrackOutput;
import androidx.media3.extractor.text.DefaultSubtitleParserFactory;
import androidx.media3.extractor.text.SubtitleExtractor;
import androidx.media3.extractor.text.SubtitleParser;
import com.google.common.base.Preconditions;
import com.google.common.base.Supplier;
import com.google.common.collect.ImmutableList;
import defpackage.bm;
import defpackage.d21;
import defpackage.md;
import defpackage.pq0;
import defpackage.ws;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class DefaultMediaSourceFactory implements MediaSourceFactory {
    public static final /* synthetic */ int l = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final DelegateFactoryLoader f15478c;
    public final DataSource.Factory d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public SubtitleParser.Factory f15479e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final long f15480f;
    public final long g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final long f15481h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final float f15482i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final float f15483j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f15484k;

    @Deprecated
    public interface AdsLoaderProvider extends AdsLoader.Provider {
    }

    public static final class DelegateFactoryLoader {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final ExtractorsFactory f15485a;
        public DataSource.Factory d;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public SubtitleParser.Factory f15489f;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final HashMap f15486b = new HashMap();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final HashMap f15487c = new HashMap();

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public boolean f15488e = true;
        public int g = 3;

        public DelegateFactoryLoader(ExtractorsFactory extractorsFactory, SubtitleParser.Factory factory) {
            this.f15485a = extractorsFactory;
            this.f15489f = factory;
        }

        public final MediaSource.Factory a(int i2) {
            Supplier wsVar;
            Integer numValueOf = Integer.valueOf(i2);
            HashMap map = this.f15487c;
            MediaSource.Factory factory = (MediaSource.Factory) map.get(numValueOf);
            if (factory != null) {
                return factory;
            }
            Integer numValueOf2 = Integer.valueOf(i2);
            HashMap map2 = this.f15486b;
            Supplier supplier = (Supplier) map2.get(numValueOf2);
            if (supplier == null) {
                final DataSource.Factory factory2 = this.d;
                factory2.getClass();
                final int i3 = 0;
                if (i2 != 0) {
                    final int i4 = 1;
                    if (i2 != 1) {
                        final int i5 = 2;
                        if (i2 == 2) {
                            int i6 = HlsMediaSource.Factory.p;
                            final Class clsAsSubclass = HlsMediaSource.Factory.class.asSubclass(MediaSource.Factory.class);
                            wsVar = new Supplier() { // from class: vs
                                @Override // com.google.common.base.Supplier
                                public final Object get() {
                                    switch (i5) {
                                        case 0:
                                            break;
                                        case 1:
                                            break;
                                    }
                                    return DefaultMediaSourceFactory.e(clsAsSubclass, factory2);
                                }
                            };
                        } else if (i2 == 3) {
                            wsVar = new ws(Class.forName("androidx.media3.exoplayer.rtsp.RtspMediaSource$Factory").asSubclass(MediaSource.Factory.class), 0);
                        } else if (i2 == 4) {
                            supplier = new Supplier() { // from class: androidx.media3.exoplayer.source.b
                                @Override // com.google.common.base.Supplier
                                public final Object get() {
                                    return new ProgressiveMediaSource.Factory(factory2, this.f15642b.f15485a);
                                }
                            };
                        } else {
                            md.n(pq0.k(i2, "Unrecognized contentType: "));
                            supplier = null;
                        }
                    } else {
                        final Class<? extends U> clsAsSubclass2 = Class.forName("androidx.media3.exoplayer.smoothstreaming.SsMediaSource$Factory").asSubclass(MediaSource.Factory.class);
                        wsVar = new Supplier() { // from class: vs
                            @Override // com.google.common.base.Supplier
                            public final Object get() {
                                switch (i4) {
                                    case 0:
                                        break;
                                    case 1:
                                        break;
                                }
                                return DefaultMediaSourceFactory.e(clsAsSubclass2, factory2);
                            }
                        };
                    }
                    supplier = wsVar;
                } else {
                    final Class<? extends U> clsAsSubclass3 = Class.forName("androidx.media3.exoplayer.dash.DashMediaSource$Factory").asSubclass(MediaSource.Factory.class);
                    supplier = new Supplier() { // from class: vs
                        @Override // com.google.common.base.Supplier
                        public final Object get() {
                            switch (i3) {
                                case 0:
                                    break;
                                case 1:
                                    break;
                            }
                            return DefaultMediaSourceFactory.e(clsAsSubclass3, factory2);
                        }
                    };
                }
                map2.put(Integer.valueOf(i2), supplier);
            }
            MediaSource.Factory factory3 = (MediaSource.Factory) supplier.get();
            factory3.a(this.f15489f);
            factory3.d(this.f15488e);
            factory3.b(this.g);
            map.put(Integer.valueOf(i2), factory3);
            return factory3;
        }
    }

    public static final class UnknownSubtitlesExtractor implements Extractor {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Format f15490a;

        public UnknownSubtitlesExtractor(Format format) {
            this.f15490a = format;
        }

        @Override // androidx.media3.extractor.Extractor
        public final void a(long j2, long j3) {
        }

        @Override // androidx.media3.extractor.Extractor
        public final void b(ExtractorOutput extractorOutput) {
            TrackOutput trackOutputR = extractorOutput.r(0, 3);
            extractorOutput.j(new SeekMap.Unseekable(-9223372036854775807L));
            extractorOutput.n();
            Format format = this.f15490a;
            Format.Builder builderA = format.a();
            builderA.n = MimeTypes.p("text/x-unknown");
            builderA.f13771j = format.o;
            d21.w(builderA, trackOutputR);
        }

        @Override // androidx.media3.extractor.Extractor
        public final boolean d(ExtractorInput extractorInput) {
            return true;
        }

        @Override // androidx.media3.extractor.Extractor
        public final int f(ExtractorInput extractorInput, PositionHolder positionHolder) {
            return extractorInput.l(Integer.MAX_VALUE) == -1 ? -1 : 0;
        }

        @Override // androidx.media3.extractor.Extractor
        public final void release() {
        }
    }

    public DefaultMediaSourceFactory(DataSource.Factory factory, ExtractorsFactory extractorsFactory, SubtitleParser.Factory factory2) {
        this.d = factory;
        this.f15479e = factory2;
        DelegateFactoryLoader delegateFactoryLoader = new DelegateFactoryLoader(extractorsFactory, factory2);
        this.f15478c = delegateFactoryLoader;
        if (factory != delegateFactoryLoader.d) {
            delegateFactoryLoader.d = factory;
            delegateFactoryLoader.f15486b.clear();
            delegateFactoryLoader.f15487c.clear();
        }
        this.f15480f = -9223372036854775807L;
        this.g = -9223372036854775807L;
        this.f15481h = -9223372036854775807L;
        this.f15482i = -3.4028235E38f;
        this.f15483j = -3.4028235E38f;
        this.f15484k = true;
    }

    public static MediaSource.Factory e(Class cls, DataSource.Factory factory) {
        try {
            return (MediaSource.Factory) cls.getConstructor(DataSource.Factory.class).newInstance(factory);
        } catch (Exception e2) {
            bm.i(e2);
            return null;
        }
    }

    @Override // androidx.media3.exoplayer.source.MediaSource.Factory
    public final void a(SubtitleParser.Factory factory) {
        factory.getClass();
        this.f15479e = factory;
        DelegateFactoryLoader delegateFactoryLoader = this.f15478c;
        delegateFactoryLoader.f15489f = factory;
        delegateFactoryLoader.f15485a.a(factory);
        Iterator it = delegateFactoryLoader.f15487c.values().iterator();
        while (it.hasNext()) {
            ((MediaSource.Factory) it.next()).a(factory);
        }
    }

    @Override // androidx.media3.exoplayer.source.MediaSource.Factory
    public final void b(int i2) {
        DelegateFactoryLoader delegateFactoryLoader = this.f15478c;
        delegateFactoryLoader.g = i2;
        delegateFactoryLoader.f15485a.b(i2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.media3.exoplayer.source.MediaSource.Factory
    public final MediaSource c(MediaItem mediaItem) {
        mediaItem.f13788b.getClass();
        String scheme = mediaItem.f13788b.f13848a.getScheme();
        if (scheme != null && scheme.equals("ssai")) {
            throw null;
        }
        boolean zEquals = Objects.equals(mediaItem.f13788b.f13849b, "application/x-image-uri");
        MediaItem.LocalConfiguration localConfiguration = mediaItem.f13788b;
        if (zEquals) {
            long j2 = localConfiguration.f13854i;
            String str = Util.f14242a;
            throw null;
        }
        int iH = Util.H(localConfiguration.f13848a, localConfiguration.f13849b);
        if (mediaItem.f13788b.f13854i != -9223372036854775807L) {
            ExtractorsFactory extractorsFactory = this.f15478c.f15485a;
            if (extractorsFactory instanceof DefaultExtractorsFactory) {
                DefaultExtractorsFactory defaultExtractorsFactory = (DefaultExtractorsFactory) extractorsFactory;
                synchronized (defaultExtractorsFactory) {
                    defaultExtractorsFactory.f16132f = 1;
                }
            }
            ExtractorsFactory extractorsFactory2 = this.f15478c.f15485a;
            if (extractorsFactory2 instanceof DefaultExtractorsFactory) {
                DefaultExtractorsFactory defaultExtractorsFactory2 = (DefaultExtractorsFactory) extractorsFactory2;
                synchronized (defaultExtractorsFactory2) {
                    defaultExtractorsFactory2.g = 1;
                }
            }
        }
        try {
            MediaSource.Factory factoryA = this.f15478c.a(iH);
            MediaItem.LiveConfiguration.Builder builderA = mediaItem.f13789c.a();
            MediaItem.LiveConfiguration liveConfiguration = mediaItem.f13789c;
            if (liveConfiguration.f13838a == -9223372036854775807L) {
                builderA.f13842a = this.f15480f;
            }
            if (liveConfiguration.d == -3.4028235E38f) {
                builderA.d = this.f15482i;
            }
            if (liveConfiguration.f13841e == -3.4028235E38f) {
                builderA.f13845e = this.f15483j;
            }
            if (liveConfiguration.f13839b == -9223372036854775807L) {
                builderA.f13843b = this.g;
            }
            if (liveConfiguration.f13840c == -9223372036854775807L) {
                builderA.f13844c = this.f15481h;
            }
            MediaItem.LiveConfiguration liveConfigurationA = builderA.a();
            if (!liveConfigurationA.equals(mediaItem.f13789c)) {
                MediaItem.Builder builderA2 = mediaItem.a();
                builderA2.m = liveConfigurationA.a();
                mediaItem = builderA2.a();
            }
            MediaSource mediaSourceC = factoryA.c(mediaItem);
            ImmutableList immutableList = mediaItem.f13788b.g;
            if (!immutableList.isEmpty()) {
                MediaSource[] mediaSourceArr = new MediaSource[immutableList.size() + 1];
                mediaSourceArr[0] = mediaSourceC;
                for (int i2 = 0; i2 < immutableList.size(); i2++) {
                    if (this.f15484k) {
                        Format.Builder builder = new Format.Builder();
                        builder.n = MimeTypes.p(((MediaItem.SubtitleConfiguration) immutableList.get(i2)).f13868b);
                        builder.d = ((MediaItem.SubtitleConfiguration) immutableList.get(i2)).f13869c;
                        builder.f13767e = ((MediaItem.SubtitleConfiguration) immutableList.get(i2)).d;
                        builder.f13768f = ((MediaItem.SubtitleConfiguration) immutableList.get(i2)).f13870e;
                        builder.f13765b = ((MediaItem.SubtitleConfiguration) immutableList.get(i2)).f13871f;
                        builder.f13764a = ((MediaItem.SubtitleConfiguration) immutableList.get(i2)).g;
                        final Format format = new Format(builder);
                        ProgressiveMediaSource.Factory factory = new ProgressiveMediaSource.Factory(this.d, new ExtractorsFactory() { // from class: androidx.media3.exoplayer.source.a
                            @Override // androidx.media3.extractor.ExtractorsFactory
                            public final Extractor[] j() {
                                DefaultMediaSourceFactory defaultMediaSourceFactory = this.f15640b;
                                SubtitleParser.Factory factory2 = defaultMediaSourceFactory.f15479e;
                                Format format2 = format;
                                return new Extractor[]{factory2.b(format2) ? new SubtitleExtractor(defaultMediaSourceFactory.f15479e.c(format2), null) : new DefaultMediaSourceFactory.UnknownSubtitlesExtractor(format2)};
                            }
                        });
                        if (this.f15479e.b(format)) {
                            Format.Builder builderA3 = format.a();
                            builderA3.n = MimeTypes.p("application/x-media3-cues");
                            builderA3.f13771j = format.o;
                            builderA3.L = this.f15479e.a(format);
                            format = new Format(builderA3);
                        }
                        factory.f15574h = format;
                        String string = ((MediaItem.SubtitleConfiguration) immutableList.get(i2)).f13867a.toString();
                        MediaItem.Builder builder2 = new MediaItem.Builder();
                        builder2.b(string);
                        mediaSourceArr[i2 + 1] = factory.c(builder2.a());
                    } else {
                        SingleSampleMediaSource.Factory factory2 = new SingleSampleMediaSource.Factory(this.d);
                        mediaSourceArr[i2 + 1] = new SingleSampleMediaSource((MediaItem.SubtitleConfiguration) immutableList.get(i2), factory2.f15624a, factory2.f15625b, factory2.f15626c);
                    }
                }
                mediaSourceC = new MergingMediaSource(mediaSourceArr);
            }
            MediaItem.ClippingProperties clippingProperties = mediaItem.f13790e;
            if (clippingProperties.f13808b != 0 || clippingProperties.d != Long.MIN_VALUE || clippingProperties.f13811f) {
                ClippingMediaSource.Builder builder3 = new ClippingMediaSource.Builder(mediaSourceC);
                builder3.a(clippingProperties.f13808b);
                long j3 = clippingProperties.d;
                Preconditions.q(!builder3.f15461h);
                builder3.f15458c = j3;
                boolean z = !clippingProperties.g;
                Preconditions.q(!builder3.f15461h);
                builder3.d = z;
                boolean z2 = clippingProperties.f13810e;
                Preconditions.q(!builder3.f15461h);
                builder3.f15459e = z2;
                boolean z3 = clippingProperties.f13811f;
                Preconditions.q(!builder3.f15461h);
                builder3.f15460f = z3;
                boolean z4 = clippingProperties.f13812h;
                Preconditions.q(!builder3.f15461h);
                builder3.g = z4;
                Preconditions.q(!builder3.f15461h);
                builder3.f15461h = true;
                mediaSourceC = new ClippingMediaSource(builder3);
            }
            mediaItem.f13788b.getClass();
            if (mediaItem.f13788b.d == null) {
                return mediaSourceC;
            }
            Log.g("Playing media without ads. Configure ad support by calling setAdsLoaderProvider and setAdViewProvider.");
            return mediaSourceC;
        } catch (ClassNotFoundException e2) {
            bm.i(e2);
            return null;
        }
    }

    @Override // androidx.media3.exoplayer.source.MediaSource.Factory
    public final void d(boolean z) {
        this.f15484k = z;
        DelegateFactoryLoader delegateFactoryLoader = this.f15478c;
        delegateFactoryLoader.f15488e = z;
        delegateFactoryLoader.f15485a.e(z);
        Iterator it = delegateFactoryLoader.f15487c.values().iterator();
        while (it.hasNext()) {
            ((MediaSource.Factory) it.next()).d(z);
        }
    }

    public DefaultMediaSourceFactory(Context context, ExtractorsFactory extractorsFactory) {
        this(new DefaultDataSource.Factory(context), extractorsFactory);
    }

    public DefaultMediaSourceFactory(DataSource.Factory factory) {
        this(factory, new DefaultExtractorsFactory());
    }

    public DefaultMediaSourceFactory(DataSource.Factory factory, ExtractorsFactory extractorsFactory) {
        this(factory, extractorsFactory, new DefaultSubtitleParserFactory());
    }

    public DefaultMediaSourceFactory(Context context) {
        this(new DefaultDataSource.Factory(context));
    }
}
