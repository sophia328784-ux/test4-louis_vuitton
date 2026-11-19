.class LZjTIAZ/ClWSUN;
.super Ljava/util/Observable;

# interfaces
.implements Landroid/hardware/SensorEventListener;


# static fields
.field public static A:Ljava/lang/String;

.field public static B:Ljava/lang/String;

.field public static C:Ljava/lang/String;

.field public static D:Ljava/lang/String;

.field public static E:Ljava/lang/String;

.field public static F:Ljava/lang/String;

.field public static G:Ljava/lang/String;

.field public static r:Ljava/lang/String;

.field public static s:Ljava/lang/String;

.field public static t:Ljava/lang/String;

.field public static u:Ljava/lang/String;

.field public static v:Ljava/lang/String;

.field public static w:Ljava/lang/String;

.field public static x:Ljava/lang/String;

.field public static y:Ljava/lang/String;

.field public static z:Ljava/lang/String;


# instance fields
.field public final b:LZjTIAZ/KgGan;

.field public final c:Landroid/hardware/SensorManager;

.field public d:Landroid/hardware/Sensor;

.field public e:Landroid/hardware/Sensor;

.field public f:Landroid/hardware/Sensor;

.field public g:Landroid/os/HandlerThread;

.field public h:Z

.field public i:Z

.field public j:Z

.field public k:Z

.field public l:Z

.field public m:Z

.field public n:J

.field public o:[F

.field public p:[F

.field public q:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "[KgVT[\\TtC\u0015SG_RV]K_EB@\u000f\\HQWAKCU["

    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LZjTIAZ/ClWSUN;->r:Ljava/lang/String;

    const-string v0, "}@{@\\@"

    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LZjTIAZ/ClWSUN;->s:Ljava/lang/String;

    const-string v0, "CLf@Z\\H\u0000\\PRRPBXUL^N^"

    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LZjTIAZ/ClWSUN;->t:Ljava/lang/String;

    const-string v0, "OIgVRVV\u0000cTRUFBRJLN\u0005"

    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LZjTIAZ/ClWSUN;->u:Ljava/lang/String;

    const-string v0, "M|S|A[JNePAUZX{QZ^NBH\\"

    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LZjTIAZ/ClWSUN;->v:Ljava/lang/String;

    const-string v0, "|@rZ@FJR]XFHPXRJ\teYEH@[QUKLJ\u0005"

    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LZjTIAZ/ClWSUN;->w:Ljava/lang/String;

    const-string v0, "FD{W_W]tyCP]Q\u0016[WFZN^\rG\\\u0010OWOH\t\u0006DIVtth=lzGYagqg"

    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LZjTIAZ/ClWSUN;->x:Ljava/lang/String;

    const-string v0, "K]vVCFFO\u007f\u0011ZR\u0015QRL]CEK\r]J^RMQ\u0004VCU^Qy~"

    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LZjTIAZ/ClWSUN;->y:Ljava/lang/String;

    const-string v0, "[KgV_[NB}T\u0015SG_RV]K_EB@\u000fCDLPKW\u0006CIL{523"

    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LZjTIAZ/ClWSUN;->z:Ljava/lang/String;

    const-string v0, "@J5@V\\\\OcB\u0015]CW^THHGI"

    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LZjTIAZ/ClWSUN;->A:Ljava/lang/String;

    const-string v0, "AW|V]FNTx^[\u001cY_DLLDN^\rOCBDCG]\u0005TBOQioyo{{"

    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LZjTIAZ/ClWSUN;->B:Ljava/lang/String;

    const-string v0, "K]vVCFFO\u007f\u0011\\R\u0015FEWJOX_D@H\u0010NPJAKRF\\Quu<xhzND"

    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LZjTIAZ/ClWSUN;->C:Ljava/lang/String;

    const-string v0, "HD|_VV\u000fT~\u0011GYR_DLLX\u000bC_GJ^UCWMJH\u0007DQioys{m"

    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LZjTIAZ/ClWSUN;->D:Ljava/lang/String;

    const-string v0, "CLf@Z\\H\u0000VCTJ\\BN"

    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LZjTIAZ/ClWSUN;->E:Ljava/lang/String;

    const-string v0, "AW|V]FNTx^[\u001cY_DLLDN^\r@@D\u0001KMMQOFDQ`~x"

    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "CLf@Z\\H\u0000PRVYYSEWDO_I_"

    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LZjTIAZ/ClWSUN;->F:Ljava/lang/String;

    const-string v0, "AW|V]FNTx^[p\\EC]GOY"

    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LZjTIAZ/ClWSUN;->G:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;LZjTIAZ/KgGan;)V
    .locals 3

    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, LZjTIAZ/ClWSUN;->h:Z

    iput-boolean v0, p0, LZjTIAZ/ClWSUN;->i:Z

    iput-boolean v0, p0, LZjTIAZ/ClWSUN;->j:Z

    iput-boolean v0, p0, LZjTIAZ/ClWSUN;->k:Z

    iput-boolean v0, p0, LZjTIAZ/ClWSUN;->l:Z

    iput-boolean v0, p0, LZjTIAZ/ClWSUN;->m:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, LZjTIAZ/ClWSUN;->n:J

    const/4 v1, 0x3

    new-array v2, v1, [F

    iput-object v2, p0, LZjTIAZ/ClWSUN;->o:[F

    new-array v1, v1, [F

    iput-object v1, p0, LZjTIAZ/ClWSUN;->p:[F

    const/4 v1, 0x1

    iput-boolean v1, p0, LZjTIAZ/ClWSUN;->q:Z

    iput-object p2, p0, LZjTIAZ/ClWSUN;->b:LZjTIAZ/KgGan;

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sget-object p2, LZjTIAZ/ClWSUN;->s:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    iput-object p1, p0, LZjTIAZ/ClWSUN;->c:Landroid/hardware/SensorManager;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    sget-object p1, LZjTIAZ/ClWSUN;->G:Ljava/lang/String;

    sget-object p2, LZjTIAZ/ClWSUN;->y:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Throwable;

    aput-object p0, v1, v0

    invoke-static {p1, p2, v1}, LwcQZwr/GpYFMu;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    invoke-static {p0}, LZjTIAZ/GWINqE;->b(Ljava/lang/Exception;)V

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()Z
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LZjTIAZ/ClWSUN;->g:Landroid/os/HandlerThread;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, LZjTIAZ/ClWSUN;->G:Ljava/lang/String;

    sget-object v3, LZjTIAZ/ClWSUN;->B:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Throwable;

    invoke-static {v0, v3, v2}, LwcQZwr/GpYFMu;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    goto/16 :goto_3

    :cond_0
    :try_start_1
    iget-boolean v0, p0, LZjTIAZ/ClWSUN;->h:Z

    if-nez v0, :cond_e

    iget-boolean v0, p0, LZjTIAZ/ClWSUN;->i:Z

    if-nez v0, :cond_e

    iget-boolean v0, p0, LZjTIAZ/ClWSUN;->j:Z

    if-eqz v0, :cond_1

    goto/16 :goto_2

    :cond_1
    iget-object v0, p0, LZjTIAZ/ClWSUN;->c:Landroid/hardware/SensorManager;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, LZjTIAZ/ClWSUN;->d:Landroid/hardware/Sensor;

    iget-object v0, p0, LZjTIAZ/ClWSUN;->c:Landroid/hardware/SensorManager;

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, LZjTIAZ/ClWSUN;->e:Landroid/hardware/Sensor;

    iget-object v3, p0, LZjTIAZ/ClWSUN;->d:Landroid/hardware/Sensor;

    if-nez v3, :cond_2

    if-nez v0, :cond_2

    sget-object v0, LZjTIAZ/ClWSUN;->G:Ljava/lang/String;

    sget-object v1, LZjTIAZ/ClWSUN;->A:Ljava/lang/String;

    new-array v3, v2, [Ljava/lang/Throwable;

    invoke-static {v0, v1, v3}, LwcQZwr/GpYFMu;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v2

    :cond_2
    :try_start_2
    new-instance v0, Landroid/os/HandlerThread;

    sget-object v3, LZjTIAZ/ClWSUN;->v:Ljava/lang/String;

    invoke-direct {v0, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, LZjTIAZ/ClWSUN;->g:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    iget-object v0, p0, LZjTIAZ/ClWSUN;->g:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_3

    sget-object v0, LZjTIAZ/ClWSUN;->G:Ljava/lang/String;

    sget-object v1, LZjTIAZ/ClWSUN;->x:Ljava/lang/String;

    new-array v3, v2, [Ljava/lang/Throwable;

    invoke-static {v0, v1, v3}, LwcQZwr/GpYFMu;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v2

    :cond_3
    :try_start_3
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sget-object v0, LZjTIAZ/ClWSUN;->G:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, LZjTIAZ/ClWSUN;->w:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Throwable;

    invoke-static {v0, v4, v5}, LwcQZwr/GpYFMu;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    iget-object v0, p0, LZjTIAZ/ClWSUN;->d:Landroid/hardware/Sensor;

    if-eqz v0, :cond_4

    iget-object v4, p0, LZjTIAZ/ClWSUN;->c:Landroid/hardware/SensorManager;

    invoke-virtual {v4, p0, v0, v1, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    move-result v0

    iput-boolean v0, p0, LZjTIAZ/ClWSUN;->h:Z

    :cond_4
    iget-object v0, p0, LZjTIAZ/ClWSUN;->e:Landroid/hardware/Sensor;

    if-eqz v0, :cond_5

    iget-object v4, p0, LZjTIAZ/ClWSUN;->c:Landroid/hardware/SensorManager;

    invoke-virtual {v4, p0, v0, v1, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    move-result v0

    iput-boolean v0, p0, LZjTIAZ/ClWSUN;->i:Z

    :cond_5
    iget-object v0, p0, LZjTIAZ/ClWSUN;->c:Landroid/hardware/SensorManager;

    const/16 v4, 0x9

    invoke-virtual {v0, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, LZjTIAZ/ClWSUN;->f:Landroid/hardware/Sensor;

    if-eqz v0, :cond_6

    iget-object v4, p0, LZjTIAZ/ClWSUN;->c:Landroid/hardware/SensorManager;

    invoke-virtual {v4, p0, v0, v1, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    move-result v0

    iput-boolean v0, p0, LZjTIAZ/ClWSUN;->j:Z

    :cond_6
    iget-boolean v0, p0, LZjTIAZ/ClWSUN;->j:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, LZjTIAZ/ClWSUN;->c:Landroid/hardware/SensorManager;

    iget-object v3, p0, LZjTIAZ/ClWSUN;->d:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v3}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    iput-boolean v2, p0, LZjTIAZ/ClWSUN;->h:Z

    sput v1, LZjTIAZ/ZxDSl;->f:I

    goto :goto_0

    :cond_7
    sput v2, LZjTIAZ/ZxDSl;->f:I

    :goto_0
    iput-boolean v1, p0, LZjTIAZ/ClWSUN;->q:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, LZjTIAZ/ClWSUN;->n:J

    iget-boolean v0, p0, LZjTIAZ/ClWSUN;->h:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, LZjTIAZ/ClWSUN;->j:Z

    if-eqz v0, :cond_9

    :cond_8
    iget-boolean v0, p0, LZjTIAZ/ClWSUN;->i:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_9

    monitor-exit p0

    return v1

    :cond_9
    :try_start_4
    sget-object v0, LZjTIAZ/ClWSUN;->G:Ljava/lang/String;

    sget-object v1, LZjTIAZ/ClWSUN;->D:Ljava/lang/String;

    new-array v3, v2, [Ljava/lang/Throwable;

    invoke-static {v0, v1, v3}, LwcQZwr/GpYFMu;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    iget-boolean v0, p0, LZjTIAZ/ClWSUN;->h:Z

    if-nez v0, :cond_a

    sget-object v0, LZjTIAZ/ClWSUN;->G:Ljava/lang/String;

    sget-object v1, LZjTIAZ/ClWSUN;->F:Ljava/lang/String;

    new-array v3, v2, [Ljava/lang/Throwable;

    invoke-static {v0, v1, v3}, LwcQZwr/GpYFMu;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_a
    iget-boolean v0, p0, LZjTIAZ/ClWSUN;->j:Z

    if-nez v0, :cond_b

    sget-object v0, LZjTIAZ/ClWSUN;->G:Ljava/lang/String;

    sget-object v1, LZjTIAZ/ClWSUN;->E:Ljava/lang/String;

    new-array v3, v2, [Ljava/lang/Throwable;

    invoke-static {v0, v1, v3}, LwcQZwr/GpYFMu;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    :cond_b
    :goto_1
    iget-boolean v0, p0, LZjTIAZ/ClWSUN;->i:Z

    if-nez v0, :cond_c

    sget-object v0, LZjTIAZ/ClWSUN;->G:Ljava/lang/String;

    sget-object v1, LZjTIAZ/ClWSUN;->t:Ljava/lang/String;

    new-array v3, v2, [Ljava/lang/Throwable;

    invoke-static {v0, v1, v3}, LwcQZwr/GpYFMu;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    :cond_c
    iget-object v0, p0, LZjTIAZ/ClWSUN;->b:LZjTIAZ/KgGan;

    if-eqz v0, :cond_d

    sget-object v1, Lcom/cyberfend/cyfsecurity/SDKInitFailure;->MOTION_SENSOR_FAILURE:Lcom/cyberfend/cyfsecurity/SDKInitFailure;

    invoke-interface {v0}, LZjTIAZ/KgGan;->a()V

    :cond_d
    invoke-virtual {p0}, LZjTIAZ/ClWSUN;->b()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return v2

    :cond_e
    :goto_2
    :try_start_5
    sget-object v0, LZjTIAZ/ClWSUN;->G:Ljava/lang/String;

    sget-object v3, LZjTIAZ/ClWSUN;->u:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Throwable;

    invoke-static {v0, v3, v2}, LwcQZwr/GpYFMu;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return v1

    :goto_3
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v0
.end method

.method public final declared-synchronized b()V
    .locals 4

    monitor-enter p0

    :try_start_0
    sget-object v0, LZjTIAZ/ClWSUN;->G:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, LZjTIAZ/ClWSUN;->r:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Throwable;

    invoke-static {v0, v1, v3}, LwcQZwr/GpYFMu;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    iget-boolean v0, p0, LZjTIAZ/ClWSUN;->i:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, LZjTIAZ/ClWSUN;->e:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    iget-object v3, p0, LZjTIAZ/ClWSUN;->c:Landroid/hardware/SensorManager;

    invoke-virtual {v3, p0, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    iput-boolean v2, p0, LZjTIAZ/ClWSUN;->i:Z

    iput-object v1, p0, LZjTIAZ/ClWSUN;->e:Landroid/hardware/Sensor;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-boolean v0, p0, LZjTIAZ/ClWSUN;->j:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, LZjTIAZ/ClWSUN;->f:Landroid/hardware/Sensor;

    if-eqz v0, :cond_1

    iget-object v3, p0, LZjTIAZ/ClWSUN;->c:Landroid/hardware/SensorManager;

    invoke-virtual {v3, p0, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    iput-boolean v2, p0, LZjTIAZ/ClWSUN;->j:Z

    iput-object v1, p0, LZjTIAZ/ClWSUN;->f:Landroid/hardware/Sensor;

    :cond_1
    iget-boolean v0, p0, LZjTIAZ/ClWSUN;->h:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, LZjTIAZ/ClWSUN;->d:Landroid/hardware/Sensor;

    if-eqz v0, :cond_2

    iget-object v3, p0, LZjTIAZ/ClWSUN;->c:Landroid/hardware/SensorManager;

    invoke-virtual {v3, p0, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    iput-boolean v2, p0, LZjTIAZ/ClWSUN;->h:Z

    iput-object v1, p0, LZjTIAZ/ClWSUN;->d:Landroid/hardware/Sensor;

    :cond_2
    iput-boolean v2, p0, LZjTIAZ/ClWSUN;->m:Z

    iget-object v0, p0, LZjTIAZ/ClWSUN;->g:Landroid/os/HandlerThread;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, LZjTIAZ/ClWSUN;->g:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    iput-object v1, p0, LZjTIAZ/ClWSUN;->g:Landroid/os/HandlerThread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-boolean v6, v0, LZjTIAZ/ClWSUN;->m:Z

    if-nez v6, :cond_0

    iget v6, v1, Landroid/hardware/SensorEvent;->accuracy:I

    if-nez v6, :cond_0

    sget-object v6, LZjTIAZ/ClWSUN;->G:Ljava/lang/String;

    sget-object v7, LZjTIAZ/ClWSUN;->z:Ljava/lang/String;

    new-array v8, v2, [Ljava/lang/Throwable;

    invoke-static {v6, v7, v8}, LwcQZwr/GpYFMu;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    iput-boolean v3, v0, LZjTIAZ/ClWSUN;->m:Z

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto/16 :goto_4

    :cond_0
    :goto_0
    iget-object v6, v1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v6}, Landroid/hardware/Sensor;->getType()I

    move-result v6

    const/16 v7, 0x9

    if-ne v6, v7, :cond_1

    iget-object v1, v1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {v1}, [F->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    iput-object v1, v0, LZjTIAZ/ClWSUN;->o:[F

    goto :goto_1

    :cond_1
    if-ne v6, v3, :cond_2

    iget-object v1, v1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {v1}, [F->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    iput-object v1, v0, LZjTIAZ/ClWSUN;->o:[F

    :goto_1
    iput-boolean v3, v0, LZjTIAZ/ClWSUN;->k:Z

    goto :goto_2

    :cond_2
    const/4 v7, 0x2

    if-ne v6, v7, :cond_3

    iget-object v1, v1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {v1}, [F->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    iput-object v1, v0, LZjTIAZ/ClWSUN;->p:[F

    iput-boolean v3, v0, LZjTIAZ/ClWSUN;->l:Z

    :cond_3
    :goto_2
    iget-boolean v1, v0, LZjTIAZ/ClWSUN;->k:Z

    if-eqz v1, :cond_5

    iget-boolean v1, v0, LZjTIAZ/ClWSUN;->l:Z

    if-eqz v1, :cond_5

    iget-wide v6, v0, LZjTIAZ/ClWSUN;->n:J

    sub-long v14, v4, v6

    const-wide/16 v6, 0x64

    cmp-long v1, v14, v6

    if-gez v1, :cond_4

    sget v1, LZjTIAZ/ZxDSl;->d:I

    if-ne v1, v3, :cond_5

    :cond_4
    iput-wide v4, v0, LZjTIAZ/ClWSUN;->n:J

    sget v1, LZjTIAZ/ZxDSl;->c:I

    sput v2, LZjTIAZ/ZxDSl;->d:I

    invoke-virtual {v0}, Ljava/util/Observable;->setChanged()V

    new-instance v8, LZjTIAZ/QkthEf;

    iget-object v9, v0, LZjTIAZ/ClWSUN;->o:[F

    iget-object v10, v0, LZjTIAZ/ClWSUN;->p:[F

    iget-wide v11, v0, LZjTIAZ/ClWSUN;->n:J

    iget-boolean v13, v0, LZjTIAZ/ClWSUN;->q:Z

    invoke-direct/range {v8 .. v15}, LZjTIAZ/QkthEf;-><init>([F[FJZJ)V

    invoke-virtual {v0, v8}, Ljava/util/Observable;->notifyObservers(Ljava/lang/Object;)V

    iput-boolean v2, v0, LZjTIAZ/ClWSUN;->k:Z

    iput-boolean v2, v0, LZjTIAZ/ClWSUN;->l:Z

    iput-boolean v2, v0, LZjTIAZ/ClWSUN;->q:Z
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_3
    sget-object v1, LZjTIAZ/ClWSUN;->G:Ljava/lang/String;

    sget-object v4, LZjTIAZ/ClWSUN;->C:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Throwable;

    aput-object v0, v3, v2

    invoke-static {v1, v4, v3}, LwcQZwr/GpYFMu;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    invoke-static {v0}, LZjTIAZ/GWINqE;->b(Ljava/lang/Exception;)V

    goto :goto_5

    :goto_4
    sget-object v1, LZjTIAZ/ClWSUN;->G:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Throwable;

    invoke-static {v1, v0, v2}, LwcQZwr/GpYFMu;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    :cond_5
    :goto_5
    return-void
.end method
