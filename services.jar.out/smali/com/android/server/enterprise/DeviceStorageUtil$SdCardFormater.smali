.class Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater;
.super Ljava/lang/Object;
.source "DeviceStorageUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/DeviceStorageUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SdCardFormater"
.end annotation


# static fields
.field public static final OperationSucceeded:I


# instance fields
.field finished:Z

.field isPreMounted:Z

.field mExternal:Z

.field private mMountService:Landroid/os/storage/IMountService;

.field private mStorageListener:Landroid/os/storage/StorageEventListener;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field success:Z

.field final synthetic this$0:Lcom/android/server/enterprise/DeviceStorageUtil;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/DeviceStorageUtil;Z)V
    .locals 2
    .parameter
    .parameter "isExternal"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 385
    iput-object p1, p0, Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater;->this$0:Lcom/android/server/enterprise/DeviceStorageUtil;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 337
    iput-object v1, p0, Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater;->mMountService:Landroid/os/storage/IMountService;

    .line 338
    iput-boolean v0, p0, Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater;->finished:Z

    .line 339
    iput-boolean v0, p0, Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater;->success:Z

    .line 340
    iput-boolean v0, p0, Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater;->mExternal:Z

    .line 341
    iput-boolean v0, p0, Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater;->isPreMounted:Z

    .line 342
    iput-object v1, p0, Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 344
    new-instance v0, Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater$1;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater$1;-><init>(Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater;)V

    iput-object v0, p0, Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater;->mStorageListener:Landroid/os/storage/StorageEventListener;

    .line 386
    iput-boolean p2, p0, Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater;->mExternal:Z

    .line 387
    iget-object v0, p0, Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v0, :cond_0

    .line 388
    #getter for: Lcom/android/server/enterprise/DeviceStorageUtil;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/server/enterprise/DeviceStorageUtil;->access$400(Lcom/android/server/enterprise/DeviceStorageUtil;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "storage"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 389
    iget-object v0, p0, Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v0, :cond_0

    .line 390
    const-string v0, "DeviceStorageUtil"

    const-string v1, "Failed to get StorageManager"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater;)Landroid/os/storage/StorageEventListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 334
    iget-object v0, p0, Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater;->mStorageListener:Landroid/os/storage/StorageEventListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater;)Landroid/os/storage/StorageManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 334
    iget-object v0, p0, Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater;->mStorageManager:Landroid/os/storage/StorageManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater;)Ljava/io/File;
    .locals 1
    .parameter "x0"

    .prologue
    .line 334
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater;->getSdCardPath()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 334
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater;->mountSdCard()Z

    move-result v0

    return v0
.end method

.method private disconnectSdCardOperations()V
    .locals 7

    .prologue
    .line 397
    const-string v4, "DeviceStorageUtil"

    const-string v5, "END MTP"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.android.END_MTP"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 399
    .local v1, intentBroadcast:Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater;->this$0:Lcom/android/server/enterprise/DeviceStorageUtil;

    #getter for: Lcom/android/server/enterprise/DeviceStorageUtil;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/enterprise/DeviceStorageUtil;->access$400(Lcom/android/server/enterprise/DeviceStorageUtil;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 400
    const-string v4, "DeviceStorageUtil"

    const-string v5, "END UMS"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    iget-object v4, p0, Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater;->this$0:Lcom/android/server/enterprise/DeviceStorageUtil;

    #getter for: Lcom/android/server/enterprise/DeviceStorageUtil;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/enterprise/DeviceStorageUtil;->access$400(Lcom/android/server/enterprise/DeviceStorageUtil;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "storage"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/StorageManager;

    .line 403
    .local v3, sm:Landroid/os/storage/StorageManager;
    invoke-virtual {v3}, Landroid/os/storage/StorageManager;->isUsbMassStorageEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 404
    invoke-virtual {v3}, Landroid/os/storage/StorageManager;->disableUsbMassStorage()V

    .line 406
    const/4 v2, 0x0

    .line 407
    .local v2, retryCount:I
    :goto_0
    :try_start_0
    invoke-virtual {v3}, Landroid/os/storage/StorageManager;->isUsbMassStorageEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    .line 419
    .end local v2           #retryCount:I
    :cond_0
    :goto_1
    return-void

    .line 410
    .restart local v2       #retryCount:I
    :cond_1
    const-string v4, "DeviceStorageUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UMS not yet disabled : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    const-wide/16 v4, 0x3e8

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 406
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 414
    :catch_0
    move-exception v0

    .line 415
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "DeviceStorageUtil"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private declared-synchronized getMountService()Landroid/os/storage/IMountService;
    .locals 4

    .prologue
    .line 438
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater;->mMountService:Landroid/os/storage/IMountService;

    if-nez v2, :cond_0

    .line 439
    const-string v2, "mount"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 440
    .local v1, service:Landroid/os/IBinder;
    if-eqz v1, :cond_1

    .line 441
    invoke-static {v1}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater;->mMountService:Landroid/os/storage/IMountService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 449
    .end local v1           #service:Landroid/os/IBinder;
    :cond_0
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater;->mMountService:Landroid/os/storage/IMountService;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v2

    .line 443
    .restart local v1       #service:Landroid/os/IBinder;
    :cond_1
    :try_start_2
    const-string v2, "DeviceStorageUtil"

    const-string v3, "Can\'t get mount service"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 446
    .end local v1           #service:Landroid/os/IBinder;
    :catch_0
    move-exception v0

    .line 447
    .local v0, e:Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 438
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private getSdCardPath()Ljava/io/File;
    .locals 1

    .prologue
    .line 429
    iget-boolean v0, p0, Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater;->mExternal:Z

    if-eqz v0, :cond_0

    .line 430
    iget-object v0, p0, Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater;->this$0:Lcom/android/server/enterprise/DeviceStorageUtil;

    #calls: Lcom/android/server/enterprise/DeviceStorageUtil;->getExternalSdCardDirectory()Ljava/io/File;
    invoke-static {v0}, Lcom/android/server/enterprise/DeviceStorageUtil;->access$700(Lcom/android/server/enterprise/DeviceStorageUtil;)Ljava/io/File;

    move-result-object v0

    .line 432
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater;->this$0:Lcom/android/server/enterprise/DeviceStorageUtil;

    #calls: Lcom/android/server/enterprise/DeviceStorageUtil;->getInternalSdCardDirectory()Ljava/io/File;
    invoke-static {v0}, Lcom/android/server/enterprise/DeviceStorageUtil;->access$800(Lcom/android/server/enterprise/DeviceStorageUtil;)Ljava/io/File;

    move-result-object v0

    goto :goto_0
.end method

.method private getSdCardState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 422
    iget-boolean v0, p0, Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater;->mExternal:Z

    if-eqz v0, :cond_0

    .line 423
    iget-object v0, p0, Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater;->this$0:Lcom/android/server/enterprise/DeviceStorageUtil;

    #calls: Lcom/android/server/enterprise/DeviceStorageUtil;->getExternalSdCardState()Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/enterprise/DeviceStorageUtil;->access$500(Lcom/android/server/enterprise/DeviceStorageUtil;)Ljava/lang/String;

    move-result-object v0

    .line 425
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater;->this$0:Lcom/android/server/enterprise/DeviceStorageUtil;

    #calls: Lcom/android/server/enterprise/DeviceStorageUtil;->getInternalSdCardState()Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/enterprise/DeviceStorageUtil;->access$600(Lcom/android/server/enterprise/DeviceStorageUtil;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private isSdCardMounted()Z
    .locals 2

    .prologue
    .line 453
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater;->getSdCardState()Ljava/lang/String;

    move-result-object v0

    .line 454
    .local v0, status:Ljava/lang/String;
    const-string v1, "mounted_ro"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 456
    :cond_0
    const/4 v1, 0x1

    .line 458
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private mountSdCard()Z
    .locals 10

    .prologue
    .line 479
    const/4 v6, 0x0

    .line 480
    .local v6, success:Z
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v1

    .line 482
    .local v1, mountService:Landroid/os/storage/IMountService;
    if-eqz v1, :cond_4

    .line 483
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater;->getSdCardPath()Ljava/io/File;

    move-result-object v5

    .line 484
    .local v5, sdPath:Ljava/io/File;
    iget-object v7, p0, Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater;->this$0:Lcom/android/server/enterprise/DeviceStorageUtil;

    #calls: Lcom/android/server/enterprise/DeviceStorageUtil;->getInternalSdCardDirectory()Ljava/io/File;
    invoke-static {v7}, Lcom/android/server/enterprise/DeviceStorageUtil;->access$800(Lcom/android/server/enterprise/DeviceStorageUtil;)Ljava/io/File;

    move-result-object v4

    .line 485
    .local v4, sdInternalPath:Ljava/io/File;
    iget-object v7, p0, Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater;->this$0:Lcom/android/server/enterprise/DeviceStorageUtil;

    #calls: Lcom/android/server/enterprise/DeviceStorageUtil;->getExternalSdCardDirectory()Ljava/io/File;
    invoke-static {v7}, Lcom/android/server/enterprise/DeviceStorageUtil;->access$700(Lcom/android/server/enterprise/DeviceStorageUtil;)Ljava/io/File;

    move-result-object v3

    .line 487
    .local v3, sdExternalPath:Ljava/io/File;
    if-eqz v5, :cond_0

    if-eqz v4, :cond_0

    if-nez v3, :cond_1

    .line 488
    :cond_0
    const/4 v7, 0x0

    .line 508
    .end local v3           #sdExternalPath:Ljava/io/File;
    .end local v4           #sdInternalPath:Ljava/io/File;
    .end local v5           #sdPath:Ljava/io/File;
    :goto_0
    return v7

    .line 490
    .restart local v3       #sdExternalPath:Ljava/io/File;
    .restart local v4       #sdInternalPath:Ljava/io/File;
    .restart local v5       #sdPath:Ljava/io/File;
    :cond_1
    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7}, Landroid/os/storage/IMountService;->mountVolume(Ljava/lang/String;)I

    move-result v2

    .line 492
    .local v2, result:I
    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 493
    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7}, Landroid/os/storage/IMountService;->mountVolume(Ljava/lang/String;)I

    .line 495
    :cond_2
    if-nez v2, :cond_3

    .line 496
    const/4 v6, 0x1

    .end local v2           #result:I
    .end local v3           #sdExternalPath:Ljava/io/File;
    .end local v4           #sdInternalPath:Ljava/io/File;
    .end local v5           #sdPath:Ljava/io/File;
    :goto_1
    move v7, v6

    .line 508
    goto :goto_0

    .line 498
    .restart local v2       #result:I
    .restart local v3       #sdExternalPath:Ljava/io/File;
    .restart local v4       #sdInternalPath:Ljava/io/File;
    .restart local v5       #sdPath:Ljava/io/File;
    :cond_3
    const-string v7, "DeviceStorageUtil"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Oops!!! Unable to mount media - error code : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 505
    .end local v2           #result:I
    .end local v3           #sdExternalPath:Ljava/io/File;
    .end local v4           #sdInternalPath:Ljava/io/File;
    .end local v5           #sdPath:Ljava/io/File;
    :catch_0
    move-exception v0

    .line 506
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 502
    .end local v0           #ex:Landroid/os/RemoteException;
    :cond_4
    :try_start_1
    const-string v7, "DeviceStorageUtil"

    const-string v8, "Oops!!! Mount service is null, can\'t mount"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private unmountSdCard(Z)Z
    .locals 5
    .parameter "force"

    .prologue
    .line 463
    const/4 v3, 0x0

    .line 464
    .local v3, success:Z
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v2

    .line 465
    .local v2, mountService:Landroid/os/storage/IMountService;
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater;->getSdCardPath()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    .line 467
    .local v1, extStoragePath:Ljava/lang/String;
    const/4 v4, 0x0

    :try_start_0
    invoke-interface {v2, v1, p1, v4}, Landroid/os/storage/IMountService;->unmountVolume(Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 469
    const/4 v3, 0x1

    .line 475
    :goto_0
    return v3

    .line 470
    :catch_0
    move-exception v0

    .line 472
    .local v0, e:Ljava/lang/Exception;
    const/4 v3, 0x0

    .line 473
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public formatSdCard()V
    .locals 10

    .prologue
    .line 512
    monitor-enter p0

    .line 513
    const/4 v7, 0x0

    :try_start_0
    iput-boolean v7, p0, Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater;->success:Z

    .line 514
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater;->finished:Z

    .line 516
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v5

    .line 518
    .local v5, token:J
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater;->disconnectSdCardOperations()V

    .line 519
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v4

    .line 520
    .local v4, service:Landroid/os/storage/IMountService;
    if-eqz v4, :cond_6

    .line 521
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater;->isSdCardMounted()Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater;->isPreMounted:Z

    .line 522
    iget-boolean v7, p0, Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater;->isPreMounted:Z

    if-eqz v7, :cond_3

    .line 525
    const-string v7, "DeviceStorageUtil"

    const-string v8, "SDcard is mounted, will try to unmount it first!!!"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    const/4 v7, 0x1

    invoke-direct {p0, v7}, Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater;->unmountSdCard(Z)Z

    move-result v2

    .line 528
    .local v2, retSuccess:Z
    if-nez v2, :cond_0

    .line 529
    new-instance v7, Ljava/lang/Exception;

    const-string v8, "DeviceStorageUtil: Unable to unMount SDCard."

    invoke-direct {v7, v8}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 581
    .end local v2           #retSuccess:Z
    .end local v4           #service:Landroid/os/storage/IMountService;
    :catch_0
    move-exception v0

    .line 582
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 584
    :try_start_3
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 586
    .end local v0           #e:Ljava/lang/Exception;
    :goto_0
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater;->finished:Z

    .line 587
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 588
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 589
    return-void

    .line 533
    .restart local v2       #retSuccess:Z
    .restart local v4       #service:Landroid/os/storage/IMountService;
    :cond_0
    const/4 v3, 0x0

    .line 534
    .local v3, retryCount:I
    :goto_1
    :try_start_4
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater;->isSdCardMounted()Z

    move-result v7

    if-nez v7, :cond_1

    .line 542
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater;->isSdCardMounted()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 543
    new-instance v7, Ljava/lang/Exception;

    const-string v8, "DeviceStorageUtil: Unable to unMount SDCard, Wait time over. :-("

    invoke-direct {v7, v8}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 584
    .end local v2           #retSuccess:Z
    .end local v3           #retryCount:I
    .end local v4           #service:Landroid/os/storage/IMountService;
    :catchall_0
    move-exception v7

    :try_start_5
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v7

    .line 588
    .end local v5           #token:J
    :catchall_1
    move-exception v7

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v7

    .line 537
    .restart local v2       #retSuccess:Z
    .restart local v3       #retryCount:I
    .restart local v4       #service:Landroid/os/storage/IMountService;
    .restart local v5       #token:J
    :cond_1
    :try_start_6
    const-string v7, "DeviceStorageUtil"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SDcard not yet Unmounted : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    const-wide/16 v7, 0x3e8

    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V

    .line 533
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 547
    :cond_2
    const-string v7, "DeviceStorageUtil"

    const-string v8, "SDcard is Unmounted successfully :-)"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 551
    .end local v2           #retSuccess:Z
    .end local v3           #retryCount:I
    :cond_3
    :try_start_7
    const-string v7, "DeviceStorageUtil"

    const-string v8, "Let\'s try to format it!!!"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater;->getSdCardPath()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Landroid/os/storage/IMountService;->formatVolume(Ljava/lang/String;)I

    move-result v1

    .line 554
    .local v1, result:I
    if-nez v1, :cond_5

    .line 555
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater;->success:Z

    .line 556
    const-string v7, "DeviceStorageUtil"

    const-string v8, "SDcard is formatted successfully :-)"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    iget-boolean v7, p0, Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater;->isPreMounted:Z

    if-eqz v7, :cond_4

    .line 561
    invoke-direct {p0}, Lcom/android/server/enterprise/DeviceStorageUtil$SdCardFormater;->mountSdCard()Z

    move-result v2

    .line 562
    .restart local v2       #retSuccess:Z
    if-nez v2, :cond_4

    .line 563
    const-string v7, "DeviceStorageUtil"

    const-string v8, "Unable to mount SDcard. :-("

    invoke-static {v7, v8}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 584
    .end local v1           #result:I
    .end local v2           #retSuccess:Z
    :cond_4
    :goto_2
    :try_start_8
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_0

    .line 568
    .restart local v1       #result:I
    :cond_5
    :try_start_9
    const-string v7, "DeviceStorageUtil"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Oops!!! Unable to format media - error code : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_2

    .line 572
    .end local v1           #result:I
    :catch_1
    move-exception v0

    .line 573
    .restart local v0       #e:Ljava/lang/Exception;
    :try_start_a
    const-string v7, "DeviceStorageUtil"

    const-string v8, "Unable to invoke IMountService.formatMedia()"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 578
    .end local v0           #e:Ljava/lang/Exception;
    :cond_6
    const-string v7, "DeviceStorageUtil"

    const-string v8, "Unable to locate IMountService"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    goto :goto_2
.end method
