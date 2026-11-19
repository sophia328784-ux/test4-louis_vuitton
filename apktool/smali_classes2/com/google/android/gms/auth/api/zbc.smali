.class public final Lcom/google/android/gms/auth/api/zbc;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final a:Ljava/lang/Boolean;

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/android/gms/auth/api/zbc;->a:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/auth/api/zbd;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/android/gms/auth/api/zbc;->a:Ljava/lang/Boolean;

    sget-object v0, Lcom/google/android/gms/auth/api/zbd;->d:Lcom/google/android/gms/auth/api/zbd;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v0, p1, Lcom/google/android/gms/auth/api/zbd;->b:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/api/zbc;->a:Ljava/lang/Boolean;

    iget-object p1, p1, Lcom/google/android/gms/auth/api/zbd;->c:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/auth/api/zbc;->b:Ljava/lang/String;

    return-void
.end method
