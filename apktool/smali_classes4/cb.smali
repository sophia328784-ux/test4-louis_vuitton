.class public final synthetic Lcb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState$Success;

.field public final synthetic c:J

.field public final synthetic d:Lkotlin/jvm/functions/Function0;

.field public final synthetic e:Lkotlin/jvm/functions/Function0;

.field public final synthetic f:Lkotlin/jvm/functions/Function1;

.field public final synthetic g:Lkotlin/jvm/functions/Function0;

.field public final synthetic h:Lkotlin/jvm/functions/Function0;

.field public final synthetic i:Lkotlin/jvm/functions/Function0;

.field public final synthetic j:Lkotlin/jvm/functions/Function0;

.field public final synthetic k:Lkotlin/jvm/functions/Function0;

.field public final synthetic l:Lkotlin/jvm/functions/Function1;

.field public final synthetic m:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState$Success;JLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcb;->b:Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState$Success;

    iput-wide p2, p0, Lcb;->c:J

    iput-object p4, p0, Lcb;->d:Lkotlin/jvm/functions/Function0;

    iput-object p5, p0, Lcb;->e:Lkotlin/jvm/functions/Function0;

    iput-object p6, p0, Lcb;->f:Lkotlin/jvm/functions/Function1;

    iput-object p7, p0, Lcb;->g:Lkotlin/jvm/functions/Function0;

    iput-object p8, p0, Lcb;->h:Lkotlin/jvm/functions/Function0;

    iput-object p9, p0, Lcb;->i:Lkotlin/jvm/functions/Function0;

    iput-object p10, p0, Lcb;->j:Lkotlin/jvm/functions/Function0;

    iput-object p11, p0, Lcb;->k:Lkotlin/jvm/functions/Function0;

    iput-object p12, p0, Lcb;->l:Lkotlin/jvm/functions/Function1;

    iput-object p13, p0, Lcb;->m:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v13, p1

    check-cast v13, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v14

    iget-object v1, v0, Lcb;->b:Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState$Success;

    move-object v3, v1

    iget-wide v1, v0, Lcb;->c:J

    move-object v4, v3

    iget-object v3, v0, Lcb;->d:Lkotlin/jvm/functions/Function0;

    move-object v5, v4

    iget-object v4, v0, Lcb;->e:Lkotlin/jvm/functions/Function0;

    move-object v6, v5

    iget-object v5, v0, Lcb;->f:Lkotlin/jvm/functions/Function1;

    move-object v7, v6

    iget-object v6, v0, Lcb;->g:Lkotlin/jvm/functions/Function0;

    move-object v8, v7

    iget-object v7, v0, Lcb;->h:Lkotlin/jvm/functions/Function0;

    move-object v9, v8

    iget-object v8, v0, Lcb;->i:Lkotlin/jvm/functions/Function0;

    move-object v10, v9

    iget-object v9, v0, Lcb;->j:Lkotlin/jvm/functions/Function0;

    move-object v11, v10

    iget-object v10, v0, Lcb;->k:Lkotlin/jvm/functions/Function0;

    move-object v12, v11

    iget-object v11, v0, Lcb;->l:Lkotlin/jvm/functions/Function1;

    iget-object v0, v0, Lcb;->m:Lkotlin/jvm/functions/Function1;

    move-object v15, v12

    move-object v12, v0

    move-object v0, v15

    invoke-static/range {v0 .. v14}, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/AudioGuideTrackDetailBottomSheetKt;->a(Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState$Success;JLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
