.class public interface abstract Lcom/batch/android/g0/c$f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/batch/android/g0/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/batch/android/g0/c$f$a;,
        Lcom/batch/android/g0/c$f$b;
    }
.end annotation


# static fields
.field public static final a:Lcom/batch/android/g0/c$f$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/batch/android/g0/c$f$a;->a:Lcom/batch/android/g0/c$f$a;

    sput-object v0, Lcom/batch/android/g0/c$f;->a:Lcom/batch/android/g0/c$f$a;

    return-void
.end method

.method public static a(Landroid/graphics/Typeface;)V
    .locals 1

    sget-object v0, Lcom/batch/android/g0/c$f;->a:Lcom/batch/android/g0/c$f$a;

    invoke-virtual {v0, p0}, Lcom/batch/android/g0/c$f$a;->a(Landroid/graphics/Typeface;)V

    return-void
.end method

.method public static b(Landroid/graphics/Typeface;)V
    .locals 1

    sget-object v0, Lcom/batch/android/g0/c$f;->a:Lcom/batch/android/g0/c$f$a;

    invoke-virtual {v0, p0}, Lcom/batch/android/g0/c$f$a;->b(Landroid/graphics/Typeface;)V

    return-void
.end method

.method public static f()Landroid/graphics/Typeface;
    .locals 1

    sget-object v0, Lcom/batch/android/g0/c$f;->a:Lcom/batch/android/g0/c$f$a;

    invoke-virtual {v0}, Lcom/batch/android/g0/c$f$a;->c()Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public static i()Landroid/graphics/Typeface;
    .locals 1

    sget-object v0, Lcom/batch/android/g0/c$f;->a:Lcom/batch/android/g0/c$f$a;

    invoke-virtual {v0}, Lcom/batch/android/g0/c$f$a;->a()Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract a()I
.end method

.method public abstract b()Z
.end method

.method public abstract c()Z
.end method

.method public abstract d()Z
.end method

.method public abstract e()Z
.end method

.method public abstract g()Z
.end method

.method public abstract h()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/batch/android/g0/d$c;",
            ">;"
        }
    .end annotation
.end method
