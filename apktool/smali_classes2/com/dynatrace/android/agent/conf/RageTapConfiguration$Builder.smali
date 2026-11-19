.class public Lcom/dynatrace/android/agent/conf/RageTapConfiguration$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dynatrace/android/agent/conf/RageTapConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    .line 21
    iput v0, p0, Lcom/dynatrace/android/agent/conf/RageTapConfiguration$Builder;->a:I

    .line 22
    iput v0, p0, Lcom/dynatrace/android/agent/conf/RageTapConfiguration$Builder;->b:I

    const/16 v0, 0x12c

    .line 23
    iput v0, p0, Lcom/dynatrace/android/agent/conf/RageTapConfiguration$Builder;->c:I

    const/4 v0, 0x3

    .line 24
    iput v0, p0, Lcom/dynatrace/android/agent/conf/RageTapConfiguration$Builder;->d:I

    return-void
.end method

.method public constructor <init>(Lcom/dynatrace/android/agent/conf/RageTapConfiguration;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lcom/dynatrace/android/agent/conf/RageTapConfiguration;->a:I

    iput v0, p0, Lcom/dynatrace/android/agent/conf/RageTapConfiguration$Builder;->a:I

    iget v0, p1, Lcom/dynatrace/android/agent/conf/RageTapConfiguration;->b:I

    iput v0, p0, Lcom/dynatrace/android/agent/conf/RageTapConfiguration$Builder;->b:I

    iget v0, p1, Lcom/dynatrace/android/agent/conf/RageTapConfiguration;->c:I

    iput v0, p0, Lcom/dynatrace/android/agent/conf/RageTapConfiguration$Builder;->c:I

    iget p1, p1, Lcom/dynatrace/android/agent/conf/RageTapConfiguration;->d:I

    iput p1, p0, Lcom/dynatrace/android/agent/conf/RageTapConfiguration$Builder;->d:I

    return-void
.end method
