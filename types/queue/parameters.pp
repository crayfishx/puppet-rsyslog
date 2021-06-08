type Rsyslog::Queue::Parameters = Struct[{
    'queue.filename'                    => Optional[String[1]],
    'queue.spoolDirectory'              => Optional[Stdlib::Absolutepath],
    'queue.size'                        => Optional[Integer],
    'queue.dequeueBatchSize'            => Optional[Integer],
    'queue.maxDiskSpace'                => Optional[Integer],
    'queue.highWatermark'               => Optional[Integer],
    'queue.lowWatermark'                => Optional[Integer],
    'queue.fullDelaymark'               => Optional[Integer],
    'queue.lightDelaymark'              => Optional[Integer],
    'queue.discardMark'                 => Optional[Integer],
    'queue.discardSeverity'             => Optional[Integer],
    'queue.checkpointInterval'          => Optional[Integer],
    'queue.syncqueuefiles'              => Optional[Enum['on', 'off']],
    'queue.samplingInterval'            => Optional[Integer],
    'queue.type'                        => Optional[Enum['FixedArray', 'LinkedList', 'Direct', 'Disk']],
    'queue.workerThreads'               => Optional[Integer],
    'queue.workerThreadMinimumMessages' => Optional[Integer],
    'queue.timeoutWorkerthreadShutdown' => Optional[Integer],
    'queue.timeoutshutdown'             => Optional[Integer],
    'queue.timeoutActionCompletion'     => Optional[Integer],
    'queue.timeoutEnqueue'              => Optional[Integer],
    'queue.maxFileSize'                 => Optional[Pattern[/^([0-9]+)(m|M|g|G)$/]],
    'queue.saveOnShutdown'              => Optional[Enum['on', 'off']],
    'queue.dequeueSlowDown'             => Optional[Integer],
    'queue.dequeueTimeBegin'            => Optional[Integer[1, 24]],
    'queue.dequeueTimeEnd'              => Optional[Integer[1, 25]],
}]
