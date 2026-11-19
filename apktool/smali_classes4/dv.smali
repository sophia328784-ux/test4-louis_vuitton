.class public final synthetic Ldv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/Modifier;

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/immersivearticle/models/WallpaperDownloadStateUiModel;

.field public final synthetic d:I

.field public final synthetic e:I

.field public final synthetic f:Lkotlin/jvm/functions/Function0;

.field public final synthetic g:Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

.field public final synthetic h:I

.field public final synthetic i:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/immersivearticle/models/WallpaperDownloadStateUiModel;IILkotlin/jvm/functions/Function0;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldv;->b:Landroidx/compose/ui/Modifier;

    iput-object p2, p0, Ldv;->c:Lcom/vuitton/android/presentation/screen/immersivearticle/models/WallpaperDownloadStateUiModel;

    iput p3, p0, Ldv;->d:I

    iput p4, p0, Ldv;->e:I

    iput-object p5, p0, Ldv;->f:Lkotlin/jvm/functions/Function0;

    iput-object p6, p0, Ldv;->g:Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    iput p7, p0, Ldv;->h:I

    iput p8, p0, Ldv;->i:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    move-object v6, p1

    check-cast v6, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, Ldv;->h:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v7

    iget-object v0, p0, Ldv;->b:Landroidx/compose/ui/Modifier;

    iget-object v1, p0, Ldv;->c:Lcom/vuitton/android/presentation/screen/immersivearticle/models/WallpaperDownloadStateUiModel;

    iget v2, p0, Ldv;->d:I

    iget v3, p0, Ldv;->e:I

    iget-object v4, p0, Ldv;->f:Lkotlin/jvm/functions/Function0;

    iget-object v5, p0, Ldv;->g:Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    iget v8, p0, Ldv;->i:I

    invoke-static/range {v0 .. v8}, Lcom/vuitton/android/presentation/compose/components/DownloadIndicatorKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/immersivearticle/models/WallpaperDownloadStateUiModel;IILkotlin/jvm/functions/Function0;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;Landroidx/compose/runtime/Composer;II)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
