.class public Lcom/batch/android/messaging/view/AnimatedCountdownSavedState;
.super Landroid/view/View$BaseSavedState;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/batch/android/messaging/view/AnimatedCountdownSavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public b:Z

.field public c:J

.field public d:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/batch/android/messaging/view/AnimatedCountdownSavedState$a;

    invoke-direct {v0}, Lcom/batch/android/messaging/view/AnimatedCountdownSavedState$a;-><init>()V

    sput-object v0, Lcom/batch/android/messaging/view/AnimatedCountdownSavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/batch/android/messaging/view/AnimatedCountdownSavedState;->b:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/batch/android/messaging/view/AnimatedCountdownSavedState;->c:J

    iput-wide v0, p0, Lcom/batch/android/messaging/view/AnimatedCountdownSavedState;->d:J

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/batch/android/messaging/view/AnimatedCountdownSavedState;->a(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .locals 2

    .line 17
    invoke-direct {p0, p1, p2}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lcom/batch/android/messaging/view/AnimatedCountdownSavedState;->b:Z

    const-wide/16 v0, 0x0

    .line 19
    iput-wide v0, p0, Lcom/batch/android/messaging/view/AnimatedCountdownSavedState;->c:J

    .line 20
    iput-wide v0, p0, Lcom/batch/android/messaging/view/AnimatedCountdownSavedState;->d:J

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/batch/android/messaging/view/AnimatedCountdownSavedState;->a(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 2

    .line 22
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    const/4 p1, 0x0

    .line 23
    iput-boolean p1, p0, Lcom/batch/android/messaging/view/AnimatedCountdownSavedState;->b:Z

    const-wide/16 v0, 0x0

    .line 24
    iput-wide v0, p0, Lcom/batch/android/messaging/view/AnimatedCountdownSavedState;->c:J

    .line 25
    iput-wide v0, p0, Lcom/batch/android/messaging/view/AnimatedCountdownSavedState;->d:J

    return-void
.end method

.method private a(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .locals 2

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, Lcom/batch/android/messaging/view/AnimatedCountdownSavedState;->b:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/batch/android/messaging/view/AnimatedCountdownSavedState;->c:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/batch/android/messaging/view/AnimatedCountdownSavedState;->d:J

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AnimatedCountdownSavedState { animating: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/batch/android/messaging/view/AnimatedCountdownSavedState;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", animationEndDate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/batch/android/messaging/view/AnimatedCountdownSavedState;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", duration: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/batch/android/messaging/view/AnimatedCountdownSavedState;->d:J

    const-string p0, "}"

    invoke-static {v1, v2, p0, v0}, Lo60;->j(JLjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    iget-boolean p2, p0, Lcom/batch/android/messaging/view/AnimatedCountdownSavedState;->b:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-wide v0, p0, Lcom/batch/android/messaging/view/AnimatedCountdownSavedState;->c:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/batch/android/messaging/view/AnimatedCountdownSavedState;->d:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
