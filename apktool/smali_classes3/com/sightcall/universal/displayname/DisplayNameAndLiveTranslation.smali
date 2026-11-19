.class public final Lcom/sightcall/universal/displayname/DisplayNameAndLiveTranslation;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final languages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sightcall/livetranslation/domain/Language;",
            ">;"
        }
    .end annotation
.end field

.field public final name:Ljava/lang/String;

.field public final selectedLanguage:Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$LanguageISO6391;

.field public final shouldConfirmLanguage:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$LanguageISO6391;Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$LanguageISO6391;",
            "Ljava/util/List<",
            "Lcom/sightcall/livetranslation/domain/Language;",
            ">;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sightcall/universal/displayname/DisplayNameAndLiveTranslation;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/sightcall/universal/displayname/DisplayNameAndLiveTranslation;->selectedLanguage:Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$LanguageISO6391;

    iput-object p3, p0, Lcom/sightcall/universal/displayname/DisplayNameAndLiveTranslation;->languages:Ljava/util/List;

    iput-boolean p4, p0, Lcom/sightcall/universal/displayname/DisplayNameAndLiveTranslation;->shouldConfirmLanguage:Z

    return-void
.end method


# virtual methods
.method public declared-synchronized accept()V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lnet/rtccloud/sdk/Rtcc;->instance()Lnet/rtccloud/sdk/Rtcc;

    move-result-object v0

    invoke-virtual {v0}, Lnet/rtccloud/sdk/Rtcc;->bus()Lnet/rtccloud/sdk/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/sightcall/universal/displayname/DisplayNameResultEvent;

    invoke-direct {v1, p0}, Lcom/sightcall/universal/displayname/DisplayNameResultEvent;-><init>(Lcom/sightcall/universal/displayname/DisplayNameAndLiveTranslation;)V

    invoke-virtual {v0, v1}, Lnet/rtccloud/sdk/event/EventBus;->post(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
