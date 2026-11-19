.class public final synthetic Ljh0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/model/common/AssetVideoUiModel;

.field public final synthetic c:Z

.field public final synthetic d:I

.field public final synthetic e:Lkotlin/jvm/functions/Function0;

.field public final synthetic f:I

.field public final synthetic g:I


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/model/common/AssetVideoUiModel;ZILkotlin/jvm/functions/Function0;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljh0;->b:Lcom/vuitton/android/presentation/model/common/AssetVideoUiModel;

    iput-boolean p2, p0, Ljh0;->c:Z

    iput p3, p0, Ljh0;->d:I

    iput-object p4, p0, Ljh0;->e:Lkotlin/jvm/functions/Function0;

    iput p5, p0, Ljh0;->f:I

    iput p6, p0, Ljh0;->g:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    move-object v4, p1

    check-cast v4, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, Ljh0;->f:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v5

    iget-object v0, p0, Ljh0;->b:Lcom/vuitton/android/presentation/model/common/AssetVideoUiModel;

    iget-boolean v1, p0, Ljh0;->c:Z

    iget v2, p0, Ljh0;->d:I

    iget-object v3, p0, Ljh0;->e:Lkotlin/jvm/functions/Function0;

    iget v6, p0, Ljh0;->g:I

    invoke-static/range {v0 .. v6}, Lcom/vuitton/android/presentation/screen/onboarding/components/OnboardingPreferencesComposableKt;->a(Lcom/vuitton/android/presentation/model/common/AssetVideoUiModel;ZILkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
