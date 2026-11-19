.class public abstract Lcom/google/android/gms/internal/gtm/zzn;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .locals 0

    sget p2, Lcom/google/android/gms/internal/gtm/zzp;->a:I

    const/4 p2, 0x0

    const/4 p3, 0x1

    const-string p4, "gtm_urls.db"

    invoke-direct {p0, p1, p4, p2, p3}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method
