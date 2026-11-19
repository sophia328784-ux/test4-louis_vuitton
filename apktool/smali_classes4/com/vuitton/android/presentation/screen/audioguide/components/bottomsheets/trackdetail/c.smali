.class public final synthetic Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/trackdetail/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/Modifier;

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$AudioGuideColorsUiModel;

.field public final synthetic d:Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/trackdetail/TooltipContent;

.field public final synthetic e:J

.field public final synthetic f:J

.field public final synthetic g:Lkotlin/jvm/functions/Function1;

.field public final synthetic h:Lkotlin/jvm/functions/Function0;

.field public final synthetic i:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$AudioGuideColorsUiModel;Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/trackdetail/TooltipContent;JJLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/trackdetail/c;->b:Landroidx/compose/ui/Modifier;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/trackdetail/c;->c:Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$AudioGuideColorsUiModel;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/trackdetail/c;->d:Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/trackdetail/TooltipContent;

    iput-wide p4, p0, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/trackdetail/c;->e:J

    iput-wide p6, p0, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/trackdetail/c;->f:J

    iput-object p8, p0, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/trackdetail/c;->g:Lkotlin/jvm/functions/Function1;

    iput-object p9, p0, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/trackdetail/c;->h:Lkotlin/jvm/functions/Function0;

    iput-object p10, p0, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/trackdetail/c;->i:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    move-object v10, p1

    check-cast v10, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const p1, 0xc30007

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v11

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/trackdetail/c;->b:Landroidx/compose/ui/Modifier;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/trackdetail/c;->c:Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$AudioGuideColorsUiModel;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/trackdetail/c;->d:Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/trackdetail/TooltipContent;

    iget-wide v3, p0, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/trackdetail/c;->e:J

    iget-wide v5, p0, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/trackdetail/c;->f:J

    iget-object v7, p0, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/trackdetail/c;->g:Lkotlin/jvm/functions/Function1;

    iget-object v8, p0, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/trackdetail/c;->h:Lkotlin/jvm/functions/Function0;

    iget-object v9, p0, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/trackdetail/c;->i:Lkotlin/jvm/functions/Function0;

    invoke-static/range {v0 .. v11}, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/trackdetail/AudioPlayerControlsKt;->b(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$AudioGuideColorsUiModel;Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/trackdetail/TooltipContent;JJLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
