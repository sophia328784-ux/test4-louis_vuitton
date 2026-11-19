.class final Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$SettingsPanelComponentBuilder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sightcall/livetranslation/settings/SettingsPanelComponent$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SettingsPanelComponentBuilder"
.end annotation


# instance fields
.field private closeFeature:Lcom/sightcall/livetranslation/LiveTranslationAPI$CloseSettings;

.field private final liveTranslationComponentImpl:Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$LiveTranslationComponentImpl;

.field private openHistory:Lcom/sightcall/livetranslation/LiveTranslationAPI$OpenHistory;

.field private rootView:Landroid/view/ViewGroup;


# direct methods
.method private constructor <init>(Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$LiveTranslationComponentImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$SettingsPanelComponentBuilder;->liveTranslationComponentImpl:Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$LiveTranslationComponentImpl;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$LiveTranslationComponentImpl;I)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$SettingsPanelComponentBuilder;-><init>(Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$LiveTranslationComponentImpl;)V

    return-void
.end method


# virtual methods
.method public build()Lcom/sightcall/livetranslation/settings/SettingsPanelComponent;
    .locals 8

    iget-object v0, p0, Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$SettingsPanelComponentBuilder;->rootView:Landroid/view/ViewGroup;

    const-class v1, Landroid/view/ViewGroup;

    invoke-static {v1, v0}, Ldagger/internal/Preconditions;->a(Ljava/lang/Class;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$SettingsPanelComponentBuilder;->closeFeature:Lcom/sightcall/livetranslation/LiveTranslationAPI$CloseSettings;

    const-class v1, Lcom/sightcall/livetranslation/LiveTranslationAPI$CloseSettings;

    invoke-static {v1, v0}, Ldagger/internal/Preconditions;->a(Ljava/lang/Class;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$SettingsPanelComponentBuilder;->openHistory:Lcom/sightcall/livetranslation/LiveTranslationAPI$OpenHistory;

    const-class v1, Lcom/sightcall/livetranslation/LiveTranslationAPI$OpenHistory;

    invoke-static {v1, v0}, Ldagger/internal/Preconditions;->a(Ljava/lang/Class;Ljava/lang/Object;)V

    new-instance v2, Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$SettingsPanelComponentImpl;

    iget-object v3, p0, Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$SettingsPanelComponentBuilder;->liveTranslationComponentImpl:Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$LiveTranslationComponentImpl;

    new-instance v4, Lcom/sightcall/livetranslation/settings/SettingsPanelComponent$Module;

    invoke-direct {v4}, Lcom/sightcall/livetranslation/settings/SettingsPanelComponent$Module;-><init>()V

    iget-object v5, p0, Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$SettingsPanelComponentBuilder;->rootView:Landroid/view/ViewGroup;

    iget-object v6, p0, Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$SettingsPanelComponentBuilder;->closeFeature:Lcom/sightcall/livetranslation/LiveTranslationAPI$CloseSettings;

    iget-object v7, p0, Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$SettingsPanelComponentBuilder;->openHistory:Lcom/sightcall/livetranslation/LiveTranslationAPI$OpenHistory;

    invoke-direct/range {v2 .. v7}, Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$SettingsPanelComponentImpl;-><init>(Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$LiveTranslationComponentImpl;Lcom/sightcall/livetranslation/settings/SettingsPanelComponent$Module;Landroid/view/ViewGroup;Lcom/sightcall/livetranslation/LiveTranslationAPI$CloseSettings;Lcom/sightcall/livetranslation/LiveTranslationAPI$OpenHistory;)V

    return-object v2
.end method

.method public closeFeature(Lcom/sightcall/livetranslation/LiveTranslationAPI$CloseSettings;)Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$SettingsPanelComponentBuilder;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$SettingsPanelComponentBuilder;->closeFeature:Lcom/sightcall/livetranslation/LiveTranslationAPI$CloseSettings;

    return-object p0
.end method

.method public bridge synthetic closeFeature(Lcom/sightcall/livetranslation/LiveTranslationAPI$CloseSettings;)Lcom/sightcall/livetranslation/settings/SettingsPanelComponent$Builder;
    .locals 0

    .line 6
    invoke-virtual {p0, p1}, Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$SettingsPanelComponentBuilder;->closeFeature(Lcom/sightcall/livetranslation/LiveTranslationAPI$CloseSettings;)Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$SettingsPanelComponentBuilder;

    move-result-object p0

    return-object p0
.end method

.method public openHistory(Lcom/sightcall/livetranslation/LiveTranslationAPI$OpenHistory;)Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$SettingsPanelComponentBuilder;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$SettingsPanelComponentBuilder;->openHistory:Lcom/sightcall/livetranslation/LiveTranslationAPI$OpenHistory;

    return-object p0
.end method

.method public bridge synthetic openHistory(Lcom/sightcall/livetranslation/LiveTranslationAPI$OpenHistory;)Lcom/sightcall/livetranslation/settings/SettingsPanelComponent$Builder;
    .locals 0

    .line 6
    invoke-virtual {p0, p1}, Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$SettingsPanelComponentBuilder;->openHistory(Lcom/sightcall/livetranslation/LiveTranslationAPI$OpenHistory;)Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$SettingsPanelComponentBuilder;

    move-result-object p0

    return-object p0
.end method

.method public rootView(Landroid/view/ViewGroup;)Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$SettingsPanelComponentBuilder;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$SettingsPanelComponentBuilder;->rootView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public bridge synthetic rootView(Landroid/view/ViewGroup;)Lcom/sightcall/livetranslation/settings/SettingsPanelComponent$Builder;
    .locals 0

    .line 6
    invoke-virtual {p0, p1}, Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$SettingsPanelComponentBuilder;->rootView(Landroid/view/ViewGroup;)Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$SettingsPanelComponentBuilder;

    move-result-object p0

    return-object p0
.end method
