.class public final Lcom/vuitton/android/presentation/screen/feed/models/FeedViewState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u00c9\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0006\u0012\u0010\u0008\u0002\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\t\u0012\u0008\u0008\u0002\u0010\r\u001a\u00020\u000c\u0012\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u000e\u0012\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u0010\u0012\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u0012\u0012\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u000c\u0012\n\u0008\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0015\u0012\u0006\u0010\u0018\u001a\u00020\u0017\u0012\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u000c\u0012\n\u0008\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u001a\u0012\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u001a\u0012\n\u0008\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u001d\u0012\u0008\u0008\u0002\u0010\u001f\u001a\u00020\u000c\u0012\n\u0008\u0002\u0010 \u001a\u0004\u0018\u00010\u001a\u00a2\u0006\u0004\u0008!\u0010\"\u00a8\u0006#"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/feed/models/FeedViewState;",
        "",
        "Lcom/vuitton/android/presentation/model/common/FeatureThemeUiModel;",
        "theme",
        "Lcom/vuitton/android/presentation/screen/feed/models/FeedTab;",
        "defaultSelectedTab",
        "Lcom/vuitton/android/presentation/screen/feed/models/FeedTabState;",
        "feedDiscover",
        "feedForYou",
        "",
        "Lcom/vuitton/android/presentation/common/hotcontent/models/HotContentItemUiModel;",
        "hotContentList",
        "",
        "shouldAnimateHotContentWidget",
        "Lcom/vuitton/android/presentation/screen/feed/models/FeedFeatureFlags;",
        "featureFlags",
        "Lcom/vuitton/android/presentation/model/common/A11ySettings;",
        "a11ySettings",
        "Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;",
        "contactUsUiModel",
        "isEligibleForPass",
        "Lcom/vuitton/android/presentation/screen/feed/FeedBottomSheet;",
        "currentBottomSheet",
        "Lcom/vuitton/android/presentation/model/calendar/CalendarEventUiModel;",
        "calendarEvent",
        "isUserConnected",
        "",
        "userName",
        "formattedDate",
        "Lcom/vuitton/android/presentation/screen/feed/models/uimodels/AudioGuideBannerUiModel;",
        "audioGuideBanner",
        "hasAITooltipBeenDisplayed",
        "mostExpensiveSku",
        "<init>",
        "(Lcom/vuitton/android/presentation/model/common/FeatureThemeUiModel;Lcom/vuitton/android/presentation/screen/feed/models/FeedTab;Lcom/vuitton/android/presentation/screen/feed/models/FeedTabState;Lcom/vuitton/android/presentation/screen/feed/models/FeedTabState;Ljava/util/List;ZLcom/vuitton/android/presentation/screen/feed/models/FeedFeatureFlags;Lcom/vuitton/android/presentation/model/common/A11ySettings;Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;ZLcom/vuitton/android/presentation/screen/feed/FeedBottomSheet;Lcom/vuitton/android/presentation/model/calendar/CalendarEventUiModel;ZLjava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/feed/models/uimodels/AudioGuideBannerUiModel;ZLjava/lang/String;)V",
        "presentation"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:Lcom/vuitton/android/presentation/model/common/FeatureThemeUiModel;

.field public final b:Lcom/vuitton/android/presentation/screen/feed/models/FeedTab;

.field public final c:Lcom/vuitton/android/presentation/screen/feed/models/FeedTabState;

.field public final d:Lcom/vuitton/android/presentation/screen/feed/models/FeedTabState;

.field public final e:Ljava/util/List;

.field public final f:Z

.field public final g:Lcom/vuitton/android/presentation/screen/feed/models/FeedFeatureFlags;

.field public final h:Lcom/vuitton/android/presentation/model/common/A11ySettings;

.field public final i:Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;

.field public final j:Z

.field public final k:Lcom/vuitton/android/presentation/screen/feed/FeedBottomSheet;

.field public final l:Lcom/vuitton/android/presentation/model/calendar/CalendarEventUiModel;

.field public final m:Z

.field public final n:Ljava/lang/String;

.field public final o:Ljava/lang/String;

.field public final p:Lcom/vuitton/android/presentation/screen/feed/models/uimodels/AudioGuideBannerUiModel;

.field public final q:Z

.field public final r:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/model/common/FeatureThemeUiModel;Lcom/vuitton/android/presentation/screen/feed/models/FeedTab;Lcom/vuitton/android/presentation/screen/feed/models/FeedTabState;Lcom/vuitton/android/presentation/screen/feed/models/FeedTabState;Ljava/util/List;ZLcom/vuitton/android/presentation/screen/feed/models/FeedFeatureFlags;Lcom/vuitton/android/presentation/model/common/A11ySettings;Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;ZLcom/vuitton/android/presentation/screen/feed/FeedBottomSheet;Lcom/vuitton/android/presentation/model/calendar/CalendarEventUiModel;ZLjava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/feed/models/uimodels/AudioGuideBannerUiModel;ZLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vuitton/android/presentation/model/common/FeatureThemeUiModel;",
            "Lcom/vuitton/android/presentation/screen/feed/models/FeedTab;",
            "Lcom/vuitton/android/presentation/screen/feed/models/FeedTabState;",
            "Lcom/vuitton/android/presentation/screen/feed/models/FeedTabState;",
            "Ljava/util/List<",
            "+",
            "Lcom/vuitton/android/presentation/common/hotcontent/models/HotContentItemUiModel;",
            ">;Z",
            "Lcom/vuitton/android/presentation/screen/feed/models/FeedFeatureFlags;",
            "Lcom/vuitton/android/presentation/model/common/A11ySettings;",
            "Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;",
            "Z",
            "Lcom/vuitton/android/presentation/screen/feed/FeedBottomSheet;",
            "Lcom/vuitton/android/presentation/model/calendar/CalendarEventUiModel;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/vuitton/android/presentation/screen/feed/models/uimodels/AudioGuideBannerUiModel;",
            "Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 235
    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/feed/models/FeedViewState;->a:Lcom/vuitton/android/presentation/model/common/FeatureThemeUiModel;

    .line 236
    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/feed/models/FeedViewState;->b:Lcom/vuitton/android/presentation/screen/feed/models/FeedTab;

    .line 237
    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/feed/models/FeedViewState;->c:Lcom/vuitton/android/presentation/screen/feed/models/FeedTabState;

    .line 238
    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/feed/models/FeedViewState;->d:Lcom/vuitton/android/presentation/screen/feed/models/FeedTabState;

    .line 239
    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/feed/models/FeedViewState;->e:Ljava/util/List;

    .line 240
    iput-boolean p6, p0, Lcom/vuitton/android/presentation/screen/feed/models/FeedViewState;->f:Z

    .line 241
    iput-object p7, p0, Lcom/vuitton/android/presentation/screen/feed/models/FeedViewState;->g:Lcom/vuitton/android/presentation/screen/feed/models/FeedFeatureFlags;

    .line 242
    iput-object p8, p0, Lcom/vuitton/android/presentation/screen/feed/models/FeedViewState;->h:Lcom/vuitton/android/presentation/model/common/A11ySettings;

    .line 243
    iput-object p9, p0, Lcom/vuitton/android/presentation/screen/feed/models/FeedViewState;->i:Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;

    .line 244
    iput-boolean p10, p0, Lcom/vuitton/android/presentation/screen/feed/models/FeedViewState;->j:Z

    .line 245
    iput-object p11, p0, Lcom/vuitton/android/presentation/screen/feed/models/FeedViewState;->k:Lcom/vuitton/android/presentation/screen/feed/FeedBottomSheet;

    .line 246
    iput-object p12, p0, Lcom/vuitton/android/presentation/screen/feed/models/FeedViewState;->l:Lcom/vuitton/android/presentation/model/calendar/CalendarEventUiModel;

    .line 247
    iput-boolean p13, p0, Lcom/vuitton/android/presentation/screen/feed/models/FeedViewState;->m:Z

    .line 248
    iput-object p14, p0, Lcom/vuitton/android/presentation/screen/feed/models/FeedViewState;->n:Ljava/lang/String;

    .line 249
    iput-object p15, p0, Lcom/vuitton/android/presentation/screen/feed/models/FeedViewState;->o:Ljava/lang/String;

    move-object/from16 p1, p16

    .line 250
    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/feed/models/FeedViewState;->p:Lcom/vuitton/android/presentation/screen/feed/models/uimodels/AudioGuideBannerUiModel;

    move/from16 p1, p17

    .line 251
    iput-boolean p1, p0, Lcom/vuitton/android/presentation/screen/feed/models/FeedViewState;->q:Z

    move-object/from16 p1, p18

    .line 252
    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/feed/models/FeedViewState;->r:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/model/common/FeatureThemeUiModel;Lcom/vuitton/android/presentation/screen/feed/models/FeedTab;Lcom/vuitton/android/presentation/screen/feed/models/FeedTabState;Lcom/vuitton/android/presentation/screen/feed/models/FeedTabState;Ljava/util/List;ZLcom/vuitton/android/presentation/screen/feed/models/FeedFeatureFlags;Lcom/vuitton/android/presentation/model/common/A11ySettings;Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;ZLcom/vuitton/android/presentation/screen/feed/FeedBottomSheet;Lcom/vuitton/android/presentation/model/calendar/CalendarEventUiModel;ZLjava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/feed/models/uimodels/AudioGuideBannerUiModel;ZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 27

    move/from16 v0, p19

    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v5, v2

    goto :goto_0

    :cond_0
    move-object/from16 v5, p2

    :goto_0
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_1

    sget-object v1, Lcom/vuitton/android/presentation/screen/feed/models/FeedTabState$Loading;->a:Lcom/vuitton/android/presentation/screen/feed/models/FeedTabState$Loading;

    move-object v6, v1

    goto :goto_1

    :cond_1
    move-object/from16 v6, p3

    :goto_1
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_2

    sget-object v1, Lcom/vuitton/android/presentation/screen/feed/models/FeedTabState$Loading;->a:Lcom/vuitton/android/presentation/screen/feed/models/FeedTabState$Loading;

    move-object v7, v1

    goto :goto_2

    :cond_2
    move-object/from16 v7, p4

    :goto_2
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_3

    move-object v8, v2

    goto :goto_3

    :cond_3
    move-object/from16 v8, p5

    :goto_3
    and-int/lit8 v1, v0, 0x20

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    move v9, v3

    goto :goto_4

    :cond_4
    move/from16 v9, p6

    :goto_4
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_5

    new-instance v10, Lcom/vuitton/android/presentation/screen/feed/models/FeedFeatureFlags;

    const/16 v20, 0x1ff

    const/16 v21, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-direct/range {v10 .. v21}, Lcom/vuitton/android/presentation/screen/feed/models/FeedFeatureFlags;-><init>(ZZZZZZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_5

    :cond_5
    move-object/from16 v10, p7

    :goto_5
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_6

    new-instance v1, Lcom/vuitton/android/presentation/model/common/A11ySettings;

    const/4 v4, 0x7

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 p2, v1

    move/from16 p6, v4

    move-object/from16 p7, v11

    move/from16 p3, v12

    move/from16 p4, v13

    move/from16 p5, v14

    invoke-direct/range {p2 .. p7}, Lcom/vuitton/android/presentation/model/common/A11ySettings;-><init>(ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v11, v1

    goto :goto_6

    :cond_6
    move-object/from16 v11, p8

    :goto_6
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_7

    new-instance v12, Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;

    const/16 v25, 0xfff

    const/16 v26, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-direct/range {v12 .. v26}, Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;-><init>(ZLjava/lang/String;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/chat/ChatContactUsUiModel;ZZZLcom/vuitton/android/presentation/contact/ContactUsMode;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_7

    :cond_7
    move-object/from16 v12, p9

    :goto_7
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_8

    move v13, v3

    goto :goto_8

    :cond_8
    move/from16 v13, p10

    :goto_8
    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_9

    move-object v14, v2

    goto :goto_9

    :cond_9
    move-object/from16 v14, p11

    :goto_9
    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_a

    move/from16 v16, v3

    goto :goto_a

    :cond_a
    move/from16 v16, p13

    :goto_a
    and-int/lit16 v1, v0, 0x2000

    if-eqz v1, :cond_b

    move-object/from16 v17, v2

    goto :goto_b

    :cond_b
    move-object/from16 v17, p14

    :goto_b
    and-int/lit16 v1, v0, 0x4000

    if-eqz v1, :cond_c

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    move-object/from16 v18, v1

    goto :goto_c

    :cond_c
    move-object/from16 v18, p15

    :goto_c
    const v1, 0x8000

    and-int/2addr v1, v0

    if-eqz v1, :cond_d

    move-object/from16 v19, v2

    goto :goto_d

    :cond_d
    move-object/from16 v19, p16

    :goto_d
    const/high16 v1, 0x10000

    and-int/2addr v1, v0

    if-eqz v1, :cond_e

    move/from16 v20, v3

    goto :goto_e

    :cond_e
    move/from16 v20, p17

    :goto_e
    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    if-eqz v0, :cond_f

    move-object/from16 v21, v2

    :goto_f
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v15, p12

    goto :goto_10

    :cond_f
    move-object/from16 v21, p18

    goto :goto_f

    :goto_10
    invoke-direct/range {v3 .. v21}, Lcom/vuitton/android/presentation/screen/feed/models/FeedViewState;-><init>(Lcom/vuitton/android/presentation/model/common/FeatureThemeUiModel;Lcom/vuitton/android/presentation/screen/feed/models/FeedTab;Lcom/vuitton/android/presentation/screen/feed/models/FeedTabState;Lcom/vuitton/android/presentation/screen/feed/models/FeedTabState;Ljava/util/List;ZLcom/vuitton/android/presentation/screen/feed/models/FeedFeatureFlags;Lcom/vuitton/android/presentation/model/common/A11ySettings;Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;ZLcom/vuitton/android/presentation/screen/feed/FeedBottomSheet;Lcom/vuitton/android/presentation/model/calendar/CalendarEventUiModel;ZLjava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/feed/models/uimodels/AudioGuideBannerUiModel;ZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/presentation/screen/feed/models/FeedViewState;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/presentation/screen/feed/models/FeedViewState;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/feed/models/FeedViewState;->a:Lcom/vuitton/android/presentation/model/common/FeatureThemeUiModel;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/feed/models/FeedViewState;->a:Lcom/vuitton/android/presentation/model/common/FeatureThemeUiModel;

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/feed/models/FeedViewState;->b:Lcom/vuitton/android/presentation/screen/feed/models/FeedTab;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/feed/models/FeedViewState;->b:Lcom/vuitton/android/presentation/screen/feed/models/FeedTab;

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/feed/models/FeedViewState;->c:Lcom/vuitton/android/presentation/screen/feed/models/FeedTabState;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/feed/models/FeedViewState;->c:Lcom/vuitton/android/presentation/screen/feed/models/FeedTabState;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/feed/models/FeedViewState;->d:Lcom/vuitton/android/presentation/screen/feed/models/FeedTabState;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/feed/models/FeedViewState;->d:Lcom/vuitton/android/presentation/screen/feed/models/FeedTabState;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/feed/models/FeedViewState;->e:Ljava/util/List;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/feed/models/FeedViewState;->e:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/feed/models/FeedViewState;->f:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/feed/models/FeedViewState;->f:Z

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/feed/models/FeedViewState;->g:Lcom/vuitton/android/presentation/screen/feed/models/FeedFeatureFlags;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/feed/models/FeedViewState;->g:Lcom/vuitton/android/presentation/screen/feed/models/FeedFeatureFlags;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/feed/models/FeedViewState;->h:Lcom/vuitton/android/presentation/model/common/A11ySettings;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/feed/models/FeedViewState;->h:Lcom/vuitton/android/presentation/model/common/A11ySettings;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/feed/models/FeedViewState;->i:Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/feed/models/FeedViewState;->i:Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/feed/models/FeedViewState;->j:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/feed/models/FeedViewState;->j:Z

    if-eq v1, v3, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/feed/models/FeedViewState;->k:Lcom/vuitton/android/presentation/screen/feed/FeedBottomSheet;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/feed/models/FeedViewState;->k:Lcom/vuitton/android/presentation/screen/feed/FeedBottomSheet;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/feed/models/FeedViewState;->l:Lcom/vuitton/android/presentation/model/calendar/CalendarEventUiModel;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/feed/models/FeedViewState;->l:Lcom/vuitton/android/presentation/model/calendar/CalendarEventUiModel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    :cond_d
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/feed/models/FeedViewState;->m:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/feed/models/FeedViewState;->m:Z

    if-eq v1, v3, :cond_e

    return v2

    :cond_e
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/feed/models/FeedViewState;->n:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/feed/models/FeedViewState;->n:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    :cond_f
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/feed/models/FeedViewState;->o:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/feed/models/FeedViewState;->o:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    return v2

    :cond_10
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/feed/models/FeedViewState;->p:Lcom/vuitton/android/presentation/screen/feed/models/uimodels/AudioGuideBannerUiModel;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/feed/models/FeedViewState;->p:Lcom/vuitton/android/presentation/screen/feed/models/uimodels/AudioGuideBannerUiModel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    return v2

    :cond_11
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/feed/models/FeedViewState;->q:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/feed/models/FeedViewState;->q:Z

    if-eq v1, v3, :cond_12

    return v2

    :cond_12
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/feed/models/FeedViewState;->r:Ljava/lang/String;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/feed/models/FeedViewState;->r:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_13

    return v2

    :cond_13
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/feed/models/FeedViewState;->a:Lcom/vuitton/android/presentation/model/common/FeatureThemeUiModel;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/feed/models/FeedViewState;->b:Lcom/vuitton/android/presentation/screen/feed/models/FeedTab;

    if-nez v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/feed/models/FeedViewState;->c:Lcom/vuitton/android/presentation/screen/feed/models/FeedTabState;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v3, v0

    mul-int/2addr v3, v1

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/feed/models/FeedViewState;->d:Lcom/vuitton/android/presentation/screen/feed/models/FeedTabState;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/feed/models/FeedViewState;->e:Ljava/util/List;

    if-nez v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-boolean v3, p0, Lcom/vuitton/android/presentation/screen/feed/models/FeedViewState;->f:Z

    invoke-static {v0, v1, v3}, Lo60;->b(IIZ)I

    move-result v0

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/feed/models/FeedViewState;->g:Lcom/vuitton/android/presentation/screen/feed/models/FeedFeatureFlags;

    invoke-virtual {v3}, Lcom/vuitton/android/presentation/screen/feed/models/FeedFeatureFlags;->hashCode()I

    move-result v3

    add-int/2addr v3, v0

    mul-int/2addr v3, v1

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/feed/models/FeedViewState;->h:Lcom/vuitton/android/presentation/model/common/A11ySettings;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/model/common/A11ySettings;->hashCode()I

    move-result v0

    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/feed/models/FeedViewState;->i:Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;

    invoke-virtual {v3}, Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;->hashCode()I

    move-result v3

    add-int/2addr v3, v0

    mul-int/2addr v3, v1

    iget-boolean v0, p0, Lcom/vuitton/android/presentation/screen/feed/models/FeedViewState;->j:Z

    invoke-static {v3, v1, v0}, Lo60;->b(IIZ)I

    move-result v0

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/feed/models/FeedViewState;->k:Lcom/vuitton/android/presentation/screen/feed/FeedBottomSheet;

    if-nez v3, :cond_2

    move v3, v2

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/feed/models/FeedViewState;->l:Lcom/vuitton/android/presentation/model/calendar/CalendarEventUiModel;

    invoke-virtual {v3}, Lcom/vuitton/android/presentation/model/calendar/CalendarEventUiModel;->hashCode()I

    move-result v3

    add-int/2addr v3, v0

    mul-int/2addr v3, v1

    iget-boolean v0, p0, Lcom/vuitton/android/presentation/screen/feed/models/FeedViewState;->m:Z

    invoke-static {v3, v1, v0}, Lo60;->b(IIZ)I

    move-result v0

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/feed/models/FeedViewState;->n:Ljava/lang/String;

    if-nez v3, :cond_3

    move v3, v2

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_3
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/feed/models/FeedViewState;->o:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/feed/models/FeedViewState;->p:Lcom/vuitton/android/presentation/screen/feed/models/uimodels/AudioGuideBannerUiModel;

    if-nez v3, :cond_4

    move v3, v2

    goto :goto_4

    :cond_4
    invoke-virtual {v3}, Lcom/vuitton/android/presentation/screen/feed/models/uimodels/AudioGuideBannerUiModel;->hashCode()I

    move-result v3

    :goto_4
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-boolean v3, p0, Lcom/vuitton/android/presentation/screen/feed/models/FeedViewState;->q:Z

    invoke-static {v0, v1, v3}, Lo60;->b(IIZ)I

    move-result v0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/feed/models/FeedViewState;->r:Ljava/lang/String;

    if-nez p0, :cond_5

    goto :goto_5

    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_5
    add-int/2addr v0, v2

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FeedViewState(theme="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/feed/models/FeedViewState;->a:Lcom/vuitton/android/presentation/model/common/FeatureThemeUiModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", defaultSelectedTab="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/feed/models/FeedViewState;->b:Lcom/vuitton/android/presentation/screen/feed/models/FeedTab;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", feedDiscover="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/feed/models/FeedViewState;->c:Lcom/vuitton/android/presentation/screen/feed/models/FeedTabState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", feedForYou="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/feed/models/FeedViewState;->d:Lcom/vuitton/android/presentation/screen/feed/models/FeedTabState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", hotContentList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/feed/models/FeedViewState;->e:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", shouldAnimateHotContentWidget="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/feed/models/FeedViewState;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", featureFlags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/feed/models/FeedViewState;->g:Lcom/vuitton/android/presentation/screen/feed/models/FeedFeatureFlags;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", a11ySettings="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/feed/models/FeedViewState;->h:Lcom/vuitton/android/presentation/model/common/A11ySettings;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", contactUsUiModel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/feed/models/FeedViewState;->i:Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isEligibleForPass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/feed/models/FeedViewState;->j:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", currentBottomSheet="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/feed/models/FeedViewState;->k:Lcom/vuitton/android/presentation/screen/feed/FeedBottomSheet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", calendarEvent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/feed/models/FeedViewState;->l:Lcom/vuitton/android/presentation/model/calendar/CalendarEventUiModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isUserConnected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", userName="

    const-string v2, ", formattedDate="

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/feed/models/FeedViewState;->n:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/vuitton/android/presentation/screen/feed/models/FeedViewState;->m:Z

    invoke-static {v1, v3, v2, v0, v4}, Lcj;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/feed/models/FeedViewState;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", audioGuideBanner="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/feed/models/FeedViewState;->p:Lcom/vuitton/android/presentation/screen/feed/models/uimodels/AudioGuideBannerUiModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", hasAITooltipBeenDisplayed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/feed/models/FeedViewState;->q:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mostExpensiveSku="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/feed/models/FeedViewState;->r:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
