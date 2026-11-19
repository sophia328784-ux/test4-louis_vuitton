.class final Lcom/batch/android/m0/a$c;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/batch/android/m0/a;->a(Lcom/batch/android/g0/c$c;Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/batch/android/g0/c;",
        "Landroid/widget/LinearLayout;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/batch/android/m0/a;


# direct methods
.method public constructor <init>(Lcom/batch/android/m0/a;)V
    .locals 0

    iput-object p1, p0, Lcom/batch/android/m0/a$c;->b:Lcom/batch/android/m0/a;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/batch/android/g0/c;Landroid/widget/LinearLayout;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/batch/android/m0/a$c;->b:Lcom/batch/android/m0/a;

    invoke-static {p0, p1, p2}, Lcom/batch/android/m0/a;->a(Lcom/batch/android/m0/a;Lcom/batch/android/g0/c;Landroid/view/ViewGroup;)V

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/batch/android/g0/c;

    check-cast p2, Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1, p2}, Lcom/batch/android/m0/a$c;->a(Lcom/batch/android/g0/c;Landroid/widget/LinearLayout;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
