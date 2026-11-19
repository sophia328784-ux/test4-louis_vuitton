.class public final synthetic Ldd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Landroidx/compose/ui/Modifier;

.field public final synthetic d:Landroidx/compose/ui/text/TextStyle;

.field public final synthetic e:Lkotlin/jvm/functions/Function1;

.field public final synthetic f:I

.field public final synthetic g:Z

.field public final synthetic h:I

.field public final synthetic i:I

.field public final synthetic j:I

.field public final synthetic k:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZIIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldd;->b:Ljava/lang/String;

    iput-object p2, p0, Ldd;->c:Landroidx/compose/ui/Modifier;

    iput-object p3, p0, Ldd;->d:Landroidx/compose/ui/text/TextStyle;

    iput-object p4, p0, Ldd;->e:Lkotlin/jvm/functions/Function1;

    iput p5, p0, Ldd;->f:I

    iput-boolean p6, p0, Ldd;->g:Z

    iput p7, p0, Ldd;->h:I

    iput p8, p0, Ldd;->i:I

    iput p9, p0, Ldd;->j:I

    iput p10, p0, Ldd;->k:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    move-object v8, p1

    check-cast v8, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, Ldd;->j:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v9

    iget-object v0, p0, Ldd;->b:Ljava/lang/String;

    iget-object v1, p0, Ldd;->c:Landroidx/compose/ui/Modifier;

    iget-object v2, p0, Ldd;->d:Landroidx/compose/ui/text/TextStyle;

    iget-object v3, p0, Ldd;->e:Lkotlin/jvm/functions/Function1;

    iget v4, p0, Ldd;->f:I

    iget-boolean v5, p0, Ldd;->g:Z

    iget v6, p0, Ldd;->h:I

    iget v7, p0, Ldd;->i:I

    iget v10, p0, Ldd;->k:I

    invoke-static/range {v0 .. v10}, Landroidx/compose/foundation/text/BasicTextKt;->b(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZIILandroidx/compose/runtime/Composer;II)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
