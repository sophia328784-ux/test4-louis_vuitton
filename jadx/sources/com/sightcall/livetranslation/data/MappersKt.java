package com.sightcall.livetranslation.data;

import android.graphics.Color;
import com.sightcall.livetranslation.LiveTranslationAPI;
import com.sightcall.livetranslation.domain.LanguagesKt;
import com.sightcall.livetranslation.domain.LiveTranslationSettings;
import com.sightcall.session.Reference;
import defpackage.v40;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000R\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u001c\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0000\u001a\f\u0010\u0007\u001a\u00020\b*\u00020\u0002H\u0002\u001a\f\u0010\t\u001a\u00020\n*\u00020\u0002H\u0002\u001a\f\u0010\u000b\u001a\u00020\f*\u00020\u0002H\u0002\u001a\f\u0010\r\u001a\u00020\u000e*\u00020\u0002H\u0002\u001a\u0012\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00110\u0010*\u00020\u0002H\u0002\u001a\u001c\u0010\u0012\u001a\u00020\u0013*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0002\u001a\u0014\u0010\u0014\u001a\u00020\u0015*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\u0002\u001a\f\u0010\u0016\u001a\u00020\u0017*\u00020\u0002H\u0002\u001a\f\u0010\u0018\u001a\u00020\u0019*\u00020\u0002H\u0002¨\u0006\u001a"}, d2 = {"toLiveTranslationSettings", "Lcom/sightcall/livetranslation/domain/LiveTranslationSettings;", "Lcom/sightcall/session/Reference$UseCase$LiveTranslation;", "role", "Lcom/sightcall/livetranslation/LiveTranslationAPI$Role;", "localeLanguage", "Lcom/sightcall/livetranslation/LiveTranslationAPI$LocaleLanguage;", "toDisplayMode", "Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$DisplayMode;", "toFontSize", "Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$FontSize;", "toHeight", "Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$Height;", "toSentenceTimeOut", "Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$SentenceTimeOut;", "toColors", "", "Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$Color;", "toLanguageISO6391", "Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$LanguageISO6391;", "toLanguageMode", "Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$LanguageMode;", "toTranscriptHistory", "Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$TranscriptHistory;", "toTranslationAutoStartMode", "Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$TranslationAutoStartValue;", "livetranslation_release"}, k = 2, mv = {2, 3, 0}, xi = 48)
public final class MappersKt {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[LiveTranslationAPI.Role.values().length];
            try {
                iArr[LiveTranslationAPI.Role.Host.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[LiveTranslationAPI.Role.Guest.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[LiveTranslationAPI.Role.Attendee.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    private static final List<LiveTranslationSettings.Enabled.Color> toColors(Reference.UseCase.LiveTranslation liveTranslation) {
        List<String> defaultColors = liveTranslation.captionColors;
        if (defaultColors == null) {
            defaultColors = LiveTranslationEntity.INSTANCE.getDefaultColors();
        }
        List<String> list = defaultColors;
        ArrayList arrayList = new ArrayList(CollectionsKt.t(list, 10));
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(new LiveTranslationSettings.Enabled.Color(Color.parseColor((String) it.next())));
        }
        return arrayList;
    }

    private static final LiveTranslationSettings.Enabled.DisplayMode toDisplayMode(Reference.UseCase.LiveTranslation liveTranslation) {
        return Intrinsics.c(liveTranslation.captionDisplayMode, "permanent") ? LiveTranslationSettings.Enabled.DisplayMode.Permanent : LiveTranslationSettings.Enabled.DisplayMode.Permanent;
    }

    private static final LiveTranslationSettings.Enabled.FontSize toFontSize(Reference.UseCase.LiveTranslation liveTranslation) {
        String str = liveTranslation.captionFontSize;
        if (str != null) {
            int iHashCode = str.hashCode();
            if (iHashCode != -1078030475) {
                if (iHashCode != 102742843) {
                    if (iHashCode == 109548807 && str.equals("small")) {
                        return LiveTranslationSettings.Enabled.FontSize.Small;
                    }
                } else if (str.equals("large")) {
                    return LiveTranslationSettings.Enabled.FontSize.Large;
                }
            } else if (str.equals("medium")) {
                return LiveTranslationSettings.Enabled.FontSize.Medium;
            }
        }
        return LiveTranslationSettings.Enabled.FontSize.Medium;
    }

    private static final LiveTranslationSettings.Enabled.Height toHeight(Reference.UseCase.LiveTranslation liveTranslation) {
        Integer num = liveTranslation.captionHeight;
        return new LiveTranslationSettings.Enabled.Height(num != null ? num.intValue() : 50);
    }

    private static final LiveTranslationSettings.Enabled.LanguageISO6391 toLanguageISO6391(Reference.UseCase.LiveTranslation liveTranslation, LiveTranslationAPI.Role role, LiveTranslationAPI.LocaleLanguage localeLanguage) {
        String defaultSelectedLanguage;
        int i2 = WhenMappings.$EnumSwitchMapping$0[role.ordinal()];
        if (i2 == 1 || i2 == 2) {
            defaultSelectedLanguage = liveTranslation.guestLanguage;
        } else {
            if (i2 != 3) {
                v40.g();
                return null;
            }
            defaultSelectedLanguage = liveTranslation.attendeeLanguage;
        }
        if (Intrinsics.c(defaultSelectedLanguage, "default")) {
            defaultSelectedLanguage = localeLanguage.getValue();
        } else if (defaultSelectedLanguage == null) {
            defaultSelectedLanguage = LanguagesKt.getDefaultSelectedLanguage();
        }
        return new LiveTranslationSettings.Enabled.LanguageISO6391(defaultSelectedLanguage);
    }

    private static final LiveTranslationSettings.Enabled.LanguageMode toLanguageMode(Reference.UseCase.LiveTranslation liveTranslation, LiveTranslationAPI.Role role) {
        String str;
        int i2 = WhenMappings.$EnumSwitchMapping$0[role.ordinal()];
        if (i2 == 1 || i2 == 2) {
            str = liveTranslation.guestLanguageMode;
        } else {
            if (i2 != 3) {
                v40.g();
                return null;
            }
            str = liveTranslation.attendeeLanguageMode;
        }
        if (!Intrinsics.c(str, "auto") && Intrinsics.c(str, "confirmation")) {
            return LiveTranslationSettings.Enabled.LanguageMode.Confirmation;
        }
        return LiveTranslationSettings.Enabled.LanguageMode.Auto;
    }

    public static final LiveTranslationSettings toLiveTranslationSettings(Reference.UseCase.LiveTranslation liveTranslation, LiveTranslationAPI.Role role, LiveTranslationAPI.LocaleLanguage localeLanguage) {
        liveTranslation.getClass();
        role.getClass();
        localeLanguage.getClass();
        return !Intrinsics.c(liveTranslation.liveTranslation, Boolean.TRUE) ? LiveTranslationSettings.Disabled.INSTANCE : new LiveTranslationSettings.Enabled(toDisplayMode(liveTranslation), toFontSize(liveTranslation), toHeight(liveTranslation), toSentenceTimeOut(liveTranslation), toColors(liveTranslation), toLanguageISO6391(liveTranslation, role, localeLanguage), toLanguageMode(liveTranslation, role), toTranscriptHistory(liveTranslation), toTranslationAutoStartMode(liveTranslation));
    }

    private static final LiveTranslationSettings.Enabled.SentenceTimeOut toSentenceTimeOut(Reference.UseCase.LiveTranslation liveTranslation) {
        Long l = liveTranslation.captionSentenceTimeout;
        return new LiveTranslationSettings.Enabled.SentenceTimeOut(l != null ? l.longValue() : LiveTranslationEntity.DefaultSentenceTimeOut);
    }

    private static final LiveTranslationSettings.Enabled.TranscriptHistory toTranscriptHistory(Reference.UseCase.LiveTranslation liveTranslation) {
        return Intrinsics.c(liveTranslation.transcriptHistory, Boolean.TRUE) ? LiveTranslationSettings.Enabled.TranscriptHistory.Enabled : LiveTranslationSettings.Enabled.TranscriptHistory.Disabled;
    }

    private static final LiveTranslationSettings.Enabled.TranslationAutoStartValue toTranslationAutoStartMode(Reference.UseCase.LiveTranslation liveTranslation) {
        return new LiveTranslationSettings.Enabled.TranslationAutoStartValue(liveTranslation.liveTranslationAutoStart);
    }
}
