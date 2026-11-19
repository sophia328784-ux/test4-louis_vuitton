.class public final synthetic Lwj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/Modifier;

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/catalog/models/CategoryUiModel;

.field public final synthetic d:F

.field public final synthetic e:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/catalog/models/CategoryUiModel;FLkotlin/jvm/functions/Function0;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwj;->b:Landroidx/compose/ui/Modifier;

    iput-object p2, p0, Lwj;->c:Lcom/vuitton/android/presentation/screen/catalog/models/CategoryUiModel;

    iput p3, p0, Lwj;->d:F

    iput-object p4, p0, Lwj;->e:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    move-object v4, p1

    check-cast v4, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v5

    iget-object v0, p0, Lwj;->b:Landroidx/compose/ui/Modifier;

    iget-object v1, p0, Lwj;->c:Lcom/vuitton/android/presentation/screen/catalog/models/CategoryUiModel;

    iget v2, p0, Lwj;->d:F

    iget-object v3, p0, Lwj;->e:Lkotlin/jvm/functions/Function0;

    invoke-static/range {v0 .. v5}, Lcom/vuitton/android/presentation/screen/catalog/components/CatalogCategoryScreenKt;->c(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/catalog/models/CategoryUiModel;FLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
