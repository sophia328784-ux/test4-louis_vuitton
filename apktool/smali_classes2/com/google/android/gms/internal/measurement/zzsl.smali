.class public final Lcom/google/android/gms/internal/measurement/zzsl;
.super Lcom/google/android/gms/internal/measurement/zzsn;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzsf;


# instance fields
.field public final b:Ljava/io/FileInputStream;

.field public final c:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/FileInputStream;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzsn;-><init>(Ljava/io/InputStream;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzsl;->b:Ljava/io/FileInputStream;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzsl;->c:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final d0()Ljava/io/File;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzsl;->c:Ljava/io/File;

    return-object p0
.end method
