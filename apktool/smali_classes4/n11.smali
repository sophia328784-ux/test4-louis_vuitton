.class public final synthetic Ln11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/Modifier;

.field public final synthetic c:F

.field public final synthetic d:Ljava/util/List;

.field public final synthetic e:F


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;FLjava/util/List;FI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln11;->b:Landroidx/compose/ui/Modifier;

    iput p2, p0, Ln11;->c:F

    iput-object p3, p0, Ln11;->d:Ljava/util/List;

    iput p4, p0, Ln11;->e:F

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

    iget-object v0, p0, Ln11;->b:Landroidx/compose/ui/Modifier;

    iget v1, p0, Ln11;->c:F

    iget-object v2, p0, Ln11;->d:Ljava/util/List;

    iget v3, p0, Ln11;->e:F

    invoke-static/range {v0 .. v5}, Lcom/vuitton/android/presentation/screen/storemode/components/StoreModeHomeSlideshowKt;->a(Landroidx/compose/ui/Modifier;FLjava/util/List;FLandroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
