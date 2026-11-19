.class Lcom/batch/android/q/f$e;
.super Ljava/lang/Exception;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/batch/android/q/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "e"
.end annotation


# instance fields
.field private b:Ljava/lang/String;

.field final synthetic c:Lcom/batch/android/q/f;


# direct methods
.method public constructor <init>(Lcom/batch/android/q/f;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/batch/android/q/f$e;->c:Lcom/batch/android/q/f;

    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-object p3, p0, Lcom/batch/android/q/f$e;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/q/f$e;->b:Ljava/lang/String;

    return-object p0
.end method
