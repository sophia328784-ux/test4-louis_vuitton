.class final Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$LiveSentencesComponentBuilder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sightcall/livetranslation/live/LiveSentencesComponent$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LiveSentencesComponentBuilder"
.end annotation


# instance fields
.field private final liveTranslationComponentImpl:Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$LiveTranslationComponentImpl;

.field private rootView:Landroid/view/ViewGroup;

.field private settings:Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled;


# direct methods
.method private constructor <init>(Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$LiveTranslationComponentImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$LiveSentencesComponentBuilder;->liveTranslationComponentImpl:Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$LiveTranslationComponentImpl;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$LiveTranslationComponentImpl;I)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$LiveSentencesComponentBuilder;-><init>(Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$LiveTranslationComponentImpl;)V

    return-void
.end method


# virtual methods
.method public build()Lcom/sightcall/livetranslation/live/LiveSentencesComponent;
    .locals 4

    iget-object v0, p0, Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$LiveSentencesComponentBuilder;->rootView:Landroid/view/ViewGroup;

    const-class v1, Landroid/view/ViewGroup;

    invoke-static {v1, v0}, Ldagger/internal/Preconditions;->a(Ljava/lang/Class;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$LiveSentencesComponentBuilder;->settings:Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled;

    const-class v1, Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled;

    invoke-static {v1, v0}, Ldagger/internal/Preconditions;->a(Ljava/lang/Class;Ljava/lang/Object;)V

    new-instance v0, Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$LiveSentencesComponentImpl;

    iget-object v1, p0, Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$LiveSentencesComponentBuilder;->liveTranslationComponentImpl:Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$LiveTranslationComponentImpl;

    new-instance v2, Lcom/sightcall/livetranslation/live/LiveSentencesComponent$Module;

    invoke-direct {v2}, Lcom/sightcall/livetranslation/live/LiveSentencesComponent$Module;-><init>()V

    iget-object v3, p0, Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$LiveSentencesComponentBuilder;->rootView:Landroid/view/ViewGroup;

    iget-object p0, p0, Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$LiveSentencesComponentBuilder;->settings:Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$LiveSentencesComponentImpl;-><init>(Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$LiveTranslationComponentImpl;Lcom/sightcall/livetranslation/live/LiveSentencesComponent$Module;Landroid/view/ViewGroup;Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled;)V

    return-object v0
.end method

.method public rootView(Landroid/view/ViewGroup;)Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$LiveSentencesComponentBuilder;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$LiveSentencesComponentBuilder;->rootView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public bridge synthetic rootView(Landroid/view/ViewGroup;)Lcom/sightcall/livetranslation/live/LiveSentencesComponent$Builder;
    .locals 0

    .line 6
    invoke-virtual {p0, p1}, Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$LiveSentencesComponentBuilder;->rootView(Landroid/view/ViewGroup;)Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$LiveSentencesComponentBuilder;

    move-result-object p0

    return-object p0
.end method

.method public settings(Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled;)Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$LiveSentencesComponentBuilder;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$LiveSentencesComponentBuilder;->settings:Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled;

    return-object p0
.end method

.method public bridge synthetic settings(Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled;)Lcom/sightcall/livetranslation/live/LiveSentencesComponent$Builder;
    .locals 0

    .line 6
    invoke-virtual {p0, p1}, Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$LiveSentencesComponentBuilder;->settings(Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled;)Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$LiveSentencesComponentBuilder;

    move-result-object p0

    return-object p0
.end method
