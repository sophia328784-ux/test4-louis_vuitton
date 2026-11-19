.class public Lcom/dynatrace/android/agent/db/DatabaseWriteQueue$DatabaseRecord;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dynatrace/android/agent/db/DatabaseWriteQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DatabaseRecord"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Lcom/dynatrace/android/agent/data/Session;

.field public final d:I

.field public final e:J

.field public final f:I

.field public final g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/dynatrace/android/agent/data/Session;IJILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dynatrace/android/agent/db/DatabaseWriteQueue$DatabaseRecord;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/dynatrace/android/agent/db/DatabaseWriteQueue$DatabaseRecord;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/dynatrace/android/agent/db/DatabaseWriteQueue$DatabaseRecord;->c:Lcom/dynatrace/android/agent/data/Session;

    iput p4, p0, Lcom/dynatrace/android/agent/db/DatabaseWriteQueue$DatabaseRecord;->d:I

    iput-wide p5, p0, Lcom/dynatrace/android/agent/db/DatabaseWriteQueue$DatabaseRecord;->e:J

    iput p7, p0, Lcom/dynatrace/android/agent/db/DatabaseWriteQueue$DatabaseRecord;->f:I

    iput-object p8, p0, Lcom/dynatrace/android/agent/db/DatabaseWriteQueue$DatabaseRecord;->g:Ljava/lang/String;

    return-void
.end method
