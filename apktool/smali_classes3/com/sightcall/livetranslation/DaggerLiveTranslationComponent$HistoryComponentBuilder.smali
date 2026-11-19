.class final Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$HistoryComponentBuilder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sightcall/livetranslation/history/HistoryComponent$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HistoryComponentBuilder"
.end annotation


# instance fields
.field private closeFeature:Lcom/sightcall/livetranslation/LiveTranslationAPI$CloseHistory;

.field private final liveTranslationComponentImpl:Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$LiveTranslationComponentImpl;

.field private rootView:Landroid/view/ViewGroup;


# direct methods
.method private constructor <init>(Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$LiveTranslationComponentImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$HistoryComponentBuilder;->liveTranslationComponentImpl:Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$LiveTranslationComponentImpl;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$LiveTranslationComponentImpl;I)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$HistoryComponentBuilder;-><init>(Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$LiveTranslationComponentImpl;)V

    return-void
.end method


# virtual methods
.method public build()Lcom/sightcall/livetranslation/history/HistoryComponent;
    .locals 4

    iget-object v0, p0, Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$HistoryComponentBuilder;->rootView:Landroid/view/ViewGroup;

    const-class v1, Landroid/view/ViewGroup;

    invoke-static {v1, v0}, Ldagger/internal/Preconditions;->a(Ljava/lang/Class;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$HistoryComponentBuilder;->closeFeature:Lcom/sightcall/livetranslation/LiveTranslationAPI$CloseHistory;

    const-class v1, Lcom/sightcall/livetranslation/LiveTranslationAPI$CloseHistory;

    invoke-static {v1, v0}, Ldagger/internal/Preconditions;->a(Ljava/lang/Class;Ljava/lang/Object;)V

    new-instance v0, Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$HistoryComponentImpl;

    iget-object v1, p0, Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$HistoryComponentBuilder;->liveTranslationComponentImpl:Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$LiveTranslationComponentImpl;

    new-instance v2, Lcom/sightcall/livetranslation/history/HistoryComponent$Module;

    invoke-direct {v2}, Lcom/sightcall/livetranslation/history/HistoryComponent$Module;-><init>()V

    iget-object v3, p0, Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$HistoryComponentBuilder;->rootView:Landroid/view/ViewGroup;

    iget-object p0, p0, Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$HistoryComponentBuilder;->closeFeature:Lcom/sightcall/livetranslation/LiveTranslationAPI$CloseHistory;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$HistoryComponentImpl;-><init>(Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$LiveTranslationComponentImpl;Lcom/sightcall/livetranslation/history/HistoryComponent$Module;Landroid/view/ViewGroup;Lcom/sightcall/livetranslation/LiveTranslationAPI$CloseHistory;)V

    return-object v0
.end method

.method public closeFeature(Lcom/sightcall/livetranslation/LiveTranslationAPI$CloseHistory;)Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$HistoryComponentBuilder;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$HistoryComponentBuilder;->closeFeature:Lcom/sightcall/livetranslation/LiveTranslationAPI$CloseHistory;

    return-object p0
.end method

.method public bridge synthetic closeFeature(Lcom/sightcall/livetranslation/LiveTranslationAPI$CloseHistory;)Lcom/sightcall/livetranslation/history/HistoryComponent$Builder;
    .locals 0

    .line 6
    invoke-virtual {p0, p1}, Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$HistoryComponentBuilder;->closeFeature(Lcom/sightcall/livetranslation/LiveTranslationAPI$CloseHistory;)Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$HistoryComponentBuilder;

    move-result-object p0

    return-object p0
.end method

.method public rootView(Landroid/view/ViewGroup;)Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$HistoryComponentBuilder;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$HistoryComponentBuilder;->rootView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public bridge synthetic rootView(Landroid/view/ViewGroup;)Lcom/sightcall/livetranslation/history/HistoryComponent$Builder;
    .locals 0

    .line 6
    invoke-virtual {p0, p1}, Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$HistoryComponentBuilder;->rootView(Landroid/view/ViewGroup;)Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$HistoryComponentBuilder;

    move-result-object p0

    return-object p0
.end method
