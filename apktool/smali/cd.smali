.class public final synthetic Lcd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/text/AnnotatedString;

.field public final synthetic c:Landroidx/compose/ui/Modifier;

.field public final synthetic d:Landroidx/compose/ui/text/TextStyle;

.field public final synthetic e:Lkotlin/jvm/functions/Function1;

.field public final synthetic f:I

.field public final synthetic g:Z

.field public final synthetic h:I

.field public final synthetic i:I

.field public final synthetic j:Ljava/util/Map;

.field public final synthetic k:I

.field public final synthetic l:I

.field public final synthetic m:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZIILjava/util/Map;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcd;->b:Landroidx/compose/ui/text/AnnotatedString;

    iput-object p2, p0, Lcd;->c:Landroidx/compose/ui/Modifier;

    iput-object p3, p0, Lcd;->d:Landroidx/compose/ui/text/TextStyle;

    iput-object p4, p0, Lcd;->e:Lkotlin/jvm/functions/Function1;

    iput p5, p0, Lcd;->f:I

    iput-boolean p6, p0, Lcd;->g:Z

    iput p7, p0, Lcd;->h:I

    iput p8, p0, Lcd;->i:I

    iput-object p9, p0, Lcd;->j:Ljava/util/Map;

    iput p10, p0, Lcd;->k:I

    iput p11, p0, Lcd;->l:I

    iput p12, p0, Lcd;->m:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    move-object v9, p1

    check-cast v9, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, Lcd;->k:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v10

    iget p1, p0, Lcd;->l:I

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v11

    iget-object v0, p0, Lcd;->b:Landroidx/compose/ui/text/AnnotatedString;

    iget-object v1, p0, Lcd;->c:Landroidx/compose/ui/Modifier;

    iget-object v2, p0, Lcd;->d:Landroidx/compose/ui/text/TextStyle;

    iget-object v3, p0, Lcd;->e:Lkotlin/jvm/functions/Function1;

    iget v4, p0, Lcd;->f:I

    iget-boolean v5, p0, Lcd;->g:Z

    iget v6, p0, Lcd;->h:I

    iget v7, p0, Lcd;->i:I

    iget-object v8, p0, Lcd;->j:Ljava/util/Map;

    iget v12, p0, Lcd;->m:I

    invoke-static/range {v0 .. v12}, Landroidx/compose/foundation/text/BasicTextKt;->a(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZIILjava/util/Map;Landroidx/compose/runtime/Composer;III)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
