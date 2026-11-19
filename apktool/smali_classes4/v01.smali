.class public final synthetic Lv01;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/Modifier;

.field public final synthetic c:Z

.field public final synthetic d:Lkotlin/jvm/functions/Function1;

.field public final synthetic e:I

.field public final synthetic f:I

.field public final synthetic g:Ljava/lang/String;

.field public final synthetic h:Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightCtaUiModel;

.field public final synthetic i:Lkotlin/jvm/functions/Function1;

.field public final synthetic j:Lkotlin/jvm/functions/Function1;

.field public final synthetic k:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;IILjava/lang/String;Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightCtaUiModel;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv01;->b:Landroidx/compose/ui/Modifier;

    iput-boolean p2, p0, Lv01;->c:Z

    iput-object p3, p0, Lv01;->d:Lkotlin/jvm/functions/Function1;

    iput p4, p0, Lv01;->e:I

    iput p5, p0, Lv01;->f:I

    iput-object p6, p0, Lv01;->g:Ljava/lang/String;

    iput-object p7, p0, Lv01;->h:Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightCtaUiModel;

    iput-object p8, p0, Lv01;->i:Lkotlin/jvm/functions/Function1;

    iput-object p9, p0, Lv01;->j:Lkotlin/jvm/functions/Function1;

    iput p10, p0, Lv01;->k:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    move-object v9, p1

    check-cast v9, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, Lv01;->k:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v10

    iget-object v0, p0, Lv01;->b:Landroidx/compose/ui/Modifier;

    iget-boolean v1, p0, Lv01;->c:Z

    iget-object v2, p0, Lv01;->d:Lkotlin/jvm/functions/Function1;

    iget v3, p0, Lv01;->e:I

    iget v4, p0, Lv01;->f:I

    iget-object v5, p0, Lv01;->g:Ljava/lang/String;

    iget-object v6, p0, Lv01;->h:Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightCtaUiModel;

    iget-object v7, p0, Lv01;->i:Lkotlin/jvm/functions/Function1;

    iget-object v8, p0, Lv01;->j:Lkotlin/jvm/functions/Function1;

    invoke-static/range {v0 .. v10}, Lcom/vuitton/android/presentation/screen/spotlight/components/SpotlightBottomStepperKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;IILjava/lang/String;Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightCtaUiModel;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
