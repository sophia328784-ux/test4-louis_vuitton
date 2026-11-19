.class public final Lcom/google/android/gms/common/api/ApiMetadata$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/api/ApiMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public a:Lcom/google/android/gms/common/api/ComplianceOptions;

.field public b:Z

.field public c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/ApiMetadata$Builder;->b:Z

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/common/api/ApiMetadata;
    .locals 3

    new-instance v0, Lcom/google/android/gms/common/api/ApiMetadata;

    iget-object v1, p0, Lcom/google/android/gms/common/api/ApiMetadata$Builder;->a:Lcom/google/android/gms/common/api/ComplianceOptions;

    iget-boolean v2, p0, Lcom/google/android/gms/common/api/ApiMetadata$Builder;->b:Z

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/api/ApiMetadata;-><init>(Lcom/google/android/gms/common/api/ComplianceOptions;Z)V

    iget-boolean p0, p0, Lcom/google/android/gms/common/api/ApiMetadata$Builder;->c:Z

    iput-boolean p0, v0, Lcom/google/android/gms/common/api/ApiMetadata;->d:Z

    return-object v0
.end method
