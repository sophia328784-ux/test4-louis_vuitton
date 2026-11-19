.class public final Lcom/batch/android/g0/c$f$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/batch/android/g0/c$f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field static final synthetic a:Lcom/batch/android/g0/c$f$a;

.field private static b:Landroid/graphics/Typeface;

.field private static c:Landroid/graphics/Typeface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/batch/android/g0/c$f$a;

    invoke-direct {v0}, Lcom/batch/android/g0/c$f$a;-><init>()V

    sput-object v0, Lcom/batch/android/g0/c$f$a;->a:Lcom/batch/android/g0/c$f$a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic b()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 3
    return-void
.end method

.method public static synthetic d()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method


# virtual methods
.method public final a()Landroid/graphics/Typeface;
    .locals 0

    .line 62
    sget-object p0, Lcom/batch/android/g0/c$f$a;->c:Landroid/graphics/Typeface;

    return-object p0
.end method

.method public final a(Landroid/graphics/Typeface;)V
    .locals 0

    .line 61
    sput-object p1, Lcom/batch/android/g0/c$f$a;->c:Landroid/graphics/Typeface;

    return-void
.end method

.method public final a(Landroid/widget/TextView;Lcom/batch/android/g0/c$f;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p2}, Lcom/batch/android/g0/c$f;->e()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/batch/android/g0/c$f$a;->c:Landroid/graphics/Typeface;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/batch/android/g0/c$f$a;->b:Landroid/graphics/Typeface;

    :goto_0
    if-eqz p0, :cond_1

    invoke-interface {p2}, Lcom/batch/android/g0/c$f;->a()I

    move-result v0

    invoke-static {p0, v0}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object p0

    invoke-interface {p2}, Lcom/batch/android/g0/c$f;->a()I

    move-result v0

    invoke-virtual {p1, p0, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    :goto_1
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p0

    invoke-interface {p2}, Lcom/batch/android/g0/c$f;->c()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    invoke-interface {p2}, Lcom/batch/android/g0/c$f;->d()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setStrikeThruText(Z)V

    return-void
.end method

.method public final b(Landroid/graphics/Typeface;)V
    .locals 0

    sput-object p1, Lcom/batch/android/g0/c$f$a;->b:Landroid/graphics/Typeface;

    return-void
.end method

.method public final c()Landroid/graphics/Typeface;
    .locals 0

    sget-object p0, Lcom/batch/android/g0/c$f$a;->b:Landroid/graphics/Typeface;

    return-object p0
.end method
